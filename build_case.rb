#!/usr/bin/env ruby -w
require 'pathname'

$scenes = []
$current_scene = nil
$current_option = nil
# 定义语言标记

# 定义一个场景
def scene(name)
    scene = {:name=>name,:options=>[]}
    $current_scene = scene
    $scenes << scene
    yield if block_given?
end

# 定义一个选项
def option(name)
    # 创建默认场景
    if $current_scene.nil?
        scene = {:name=>"default",:options=>[]}
        $current_scene = scene
        $scenes << scene
    end
	option = {:name=>name,:value=>[]}
    $current_option=option
    $current_scene[:options] << option
    yield if block_given?
end

# 定义选项的值
def value(name="",value)
    name = value if name.empty?
    $current_option[:value] << {:name=>name, :value=>value}
end

def build_case_object(option_name, option_value)
    return {
        :option=>option_name, 
        :name=>option_value[:name], 
        :value=>option_value[:value]}
end
=begin
    定义处理处理器, 处理器回调参数为names, values, case_object(参考build_case_object)
=end
$process_block = nil
def process(&block)
    $process_block = block
end 

=begin
  递归穷举生成测试用例,结果放入result中
  每条记录形式:option_name, value_name, value_value  
=end
 
def gen(options, option_index, result)
    return if option_index >= options.size 
    
    option = options[option_index]
    option_values = option[:value]
    option_name = option[:name]

    value_count = option_values.size
    result_count = result.size

    if result_count == 0
        for vi in 0...value_count do
            option_value = option_values[vi]
            #case_object = build_case_object(option_name, option_value)
            temp_value = []
            temp_value << build_case_object(option_name, option_value)
            result << temp_value
        end 
    else
        temp = []
        for ri in 0...result_count do 
            result_value = result[ri]
            for vi in 0...value_count do
                option_value = option_values[vi] 
                temp_value = [].concat result_value
                temp_value << build_case_object(option_name, option_value)
                temp << temp_value
            end
        end  
   
        result.clear
        result.concat temp
    end
   

    gen(options, option_index+1, result)
end

path = Pathname.new("#{__FILE__}")
#dir  = path.dirname
base = path.basename

if ARGV.count < 1
    puts "Usage:#{base} case-file"
    exit 0
end

# 读取case内容, 收集数据
content = File.read ARGV[0]
eval content

# 枚举生成结果集
results = []
$scenes.each { |scene|
    result = []
    options = scene[:options]
    gen(options, 0, result)
    # puts "\# #{results.size} #{result.size}"
    results.concat result
}

for result_value in results do 
    names_ = []
    values_ = []
    for option in result_value do 
        names_ << "#{option[:option]}:#{option[:name]}"
        values_ << option[:value]
    end
    if $process_block.nil?    
        puts "#{names_.join("_")} #{values_.join(", ")}"
    else
        $process_block.call(names_, values_, result_value)
    end
end