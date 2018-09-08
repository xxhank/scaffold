scene "ios-ysdq" do
  option "auid" do
    value "empty",        ""  #
    value "good",         "ea223418ec38890c222cbb3b080a1947"              #
    value "bad",          "ea223418ec38890c222cbb3b080a19471"             #
    value "uuid_g",    "373213ea-e54c-36eb-84a3-fa6a083862f1"          #
    value "uuid_b",     "373213ea-e54c-36eb-84a3-fa6a083862f11"         #
  end

  option "nuid" do
    value "empty",        ""      #
    value "good",         "595aec06034c10692140c0012110c0cc"      #
    value "bad",          "595aec06034c10692140c0012110c0cd"      #
    value "A/ysdq",       "5951c2d6fff4d0f88fc0400357668732"      #
    value "A/jrjc",       "596c81f1a534d0f88fc0400b538267c5"      #
  end

  option "product" do
    value "I/P1",       "Le123Plat001"      # iOS个人版1(原影视大全iOS)
    value "I/IPAD",     "Le123Plat003"      # 影视大全iPad版
    value "I/SDSP",     "Le123Plat005"      # 影视大全企业版本iOS（原闪电iPhone）
    value "I/P2",       "Le123Plat006"      # iOS个人版2 （原快看iOS）
    value "I/CJSP",     "Le123Plat007"      # 超级视频iOS
    value "I/P4",       "Le123Plat201"      # iOS个人版4（代理层映射成个人1-Le123Plat001处理）
    value "I/P5",       "Le123Plat202"      # iOS个人版5（代理层映射成个人1-Le123Plat001处理）

    # value "A/YSDQ", "Le123Plat002"      # Android影视大全
    # value "A/KKYS", "Le123Plat101"      # Android快看影视
    # value "A/SDSP", "Le123Plat105"      # Android闪电视频
    # value "A/SDTV", "Le123Plat106"      # 闪电TV
    # value "A/CJSP", "Le123Plat107"      # Android 超级视频

    # value "A/JRJC", "6100"              # 今日剧场
  end

  option "version" do
    value "2.5.5"
    value "2.5.6" #iPad  2.5.6
    value "2.5.7" #个人四 2.5.7
    # value "2.5.7" #个人五 2.5.7
  end
end


scene "android-ysdq" do
  option "auid" do
    value "good",    "ea223418ec38890c222cbb3b080a1947"              #
    value "empty",        ""  #
    value "bad",     "ea223418ec38890c222cbb3b080a19471"             #
    value "uuid",    "373213ea-e54c-36eb-84a3-fa6a083862f1"          #
  end

  option "nuid" do
    value "empty",                ""      #

    value "good",    "5951c2d6fff4d0f88fc0400357668732"      #
    value "bad",     "5951c2d6fff4d0f88fc0400357668733"      #

    value "I/ysdq",    "595aec06034c10692140c0012110c0cc"      #
    value "A/jrjc",    "596c81f1a534d0f88fc0400b538267c5"      #
  end

  option "product" do
    # value "I/P1",       "Le123Plat001"      # iOS个人版1(原影视大全iOS)
    # value "I/IPAD",     "Le123Plat003"      # 影视大全iPad版
    # value "I/SDSP",     "Le123Plat005"      # 影视大全企业版本iOS（原闪电iPhone）
    # value "I/P2",       "Le123Plat006"      # iOS个人版2 （原快看iOS）
    # value "I/CJSP",     "Le123Plat007"      # 超级视频iOS
    # value "I/P4",       "Le123Plat201"      # iOS个人版4（代理层映射成个人1-Le123Plat001处理）
    # value "I/P5",       "Le123Plat202"      # iOS个人版5（代理层映射成个人1-Le123Plat001处理）

    value "A/YSDQ", "Le123Plat002"      # Android影视大全
    value "A/KKYS", "Le123Plat101"      # Android快看影视
    value "A/SDSP", "Le123Plat105"      # Android闪电视频
    value "A/CJSP", "Le123Plat107"      # Android 超级视频
    value "A/SDTV", "Le123Plat106"      # 闪电TV

    # value "A/JRJC", "6100"              # 今日剧场
  end

  option "version" do
    value "2.7.2" #
    value "2.7.3" # 影视大全:273版本
    value "2.7.5" # 快看，超级视频:275版本
  end
end

scene "android-jrjc" do
  option "auid" do
    value "empty",        ""  #
    value "good",       "ea223418ec38890c222cbb3b080a1947"              #
    value "bad",        "ea223418ec38890c222cbb3b080a19471"             #
    value "uuid",       "373213ea-e54c-36eb-84a3-fa6a083862f1"          #
  end

  option "nuid" do
    value "empty",                ""      #
    value "good",      "596C81F1A534D0F88FC0800B538267D4"
    # "596c81f1a534d0f88fc0400b538267c5"      #
    value "bad",       "596c81f1a534d0f88fc0400b538267c6"      #
    value "I/ysdq",    "595aec06034c10692140c0012110c0cc"      #
    value "A/ysdq",    "5951c2d6fff4d0f88fc0400357668732"      #
  end

  option "product" do
    # value "I/P1",       "Le123Plat001"      # iOS个人版1(原影视大全iOS)
    # value "I/IPAD",     "Le123Plat003"      # 影视大全iPad版
    # value "I/SDSP",     "Le123Plat005"      # 影视大全企业版本iOS（原闪电iPhone）
    # value "I/P2",       "Le123Plat006"      # iOS个人版2 （原快看iOS）
    # value "I/CJSP",     "Le123Plat007"      # 超级视频iOS
    # value "I/P4",       "Le123Plat201"      # iOS个人版4（代理层映射成个人1-Le123Plat001处理）
    # value "I/P5",       "Le123Plat202"      # iOS个人版5（代理层映射成个人1-Le123Plat001处理）

    # value "A/YSDQ", "Le123Plat002"      # Android影视大全
    # value "A/KKYS", "Le123Plat101"      # Android快看影视
    # value "A/SDSP", "Le123Plat105"      # Android闪电视频
    # value "A/SDTV", "Le123Plat106"      # 闪电TV
    # value "A/CJSP", "Le123Plat107"      # Android 超级视频

    value "A/JRJC", "6100"              # 今日剧场
  end

  option "version" do
    value "1.0.5" # 今日剧场 1.0.6吧
    value "1.0.6" # 今日剧场 1.0.6吧
  end
end

def LOG(str)
  __CALLER_LINE__ = caller.first.split(":")[1]
  puts "#{__FILE__}:#{__CALLER_LINE__}:#{str}"
end

index=0;
process do |names, values, case_data|
  index = index + 1
  option_nuid_name=case_data[1][:name]
  option_product_name= case_data[2][:name]

  stop_line = -1
  names_text = names.join(" ")
  result = true
  #auid:uuid nuid:A/jrjc product:A/CJSP
  matches= [/auid:(empty|bad) nuid:(empty|bad)/,
            /auid:uuid nuid:.+ product:A\//,
            /auid:bad nuid:.+ product:A\//,
            "nuid:bad",
            "auid:uuid_b nuid:empty",
            "auid:good nuid:bad"]

    for match_ in matches do
      match_result = names_text.match(match_)
      if match_result != nil
        result = false
        if index == stop_line
          LOG "#{match_} #{names_text} r:#{match_result}"
        end

        break
      else
        if index == stop_line
          LOG "#{match_} #{names_text} r:#{match_result}"
        end
      end
    end

    if index == stop_line
      LOG "#{result}"
    end

    # 当都满足格式"A/"或者"I/"时,不同的产品应该失败
    option_nuid_name_match = (option_nuid_name.match(/(A|I)\//)!=nil)
    option_product_name_match = (option_product_name.match(/(A|I)\//)!=nil)
    if result
      result = (option_nuid_name[0] == option_product_name[0]) if option_nuid_name_match && option_product_name_match
    end

    if index == stop_line
      LOG "#{result} #{option_product_name} #{option_nuid_name} #{option_nuid_name.match(/(A|I)\//)} #{option_product_name.match(/(A|I)\//)}"
    end

    if result
      result = names_text.match("nuid:A/ysdq product:A/JRJC").nil?
      if index == stop_line
        LOG "#{result}"
      end
    end

    if index == stop_line
      exit
    end

    if "#{result}".empty?
      puts "#{case_data}"
    else
      puts "test \"#{names_text}\" \"is #{result}\" \"#{values[0]}\" \"#{values[1]}\" \"#{values[2]}\" \"#{values[3]}\""
    end
  end
