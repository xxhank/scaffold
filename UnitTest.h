//
// Created by wangchao on 2018/9/10.
//

#ifndef LDID_UNITTEST_H
#define LDID_UNITTEST_H

#ifndef UNIT_TEST
#define UNIT_TEST
#endif

#ifdef UNIT_TEST
#ifndef __FILENAME__
#define __FILENAME__ ({(strrchr(__FILE__, '/')?:(__FILE__ - 1)) + 1;})
#endif


#ifndef __UT_STR__(x)
#define __UT_STR__(x) #x
#define UT_STR(s) __UT_STR__(s)
#endif

#define PASSED_LOG(fmt, ...) \
printf("\e[1m\e[38;5;14m✔ %s:%d %s> passed. " fmt "\e[0m\n",\
 __FILENAME__, __LINE__, __FUNCTION__, ##__VA_ARGS__)
#define FAILED_LOG(fmt, ...)  \
printf("\e[1m\e[38;5;196m✖ %s:%d %s> failed. " fmt "\e[0m\n", \
__FILENAME__, __LINE__, __FUNCTION__, ##__VA_ARGS__)

#define UT_ASSERT(c, fmt, ...) \
    if((c)){\
        PASSED_LOG(fmt,##__VA_ARGS__);\
    }else{\
        FAILED_LOG("expect:%s, " fmt, UT_STR(c)  ##__VA_ARGS__);\
    }

#define UT_ASSERT_LESS(a, b, fmt, ...) \
    if((a)<(b)){\
        PASSED_LOG(fmt,##__VA_ARGS__);\
    }else{\
        FAILED_LOG("%s",fmt,##__VA_ARGS__);\
    }

#define UT_ASSERT_EQUAL(a, b, fmt, ...) \
    if((a)==(b)){\
        PASSED_LOG(fmt,##__VA_ARGS__);\
    }else{\
        FAILED_LOG(fmt,##__VA_ARGS__);\
    }

#define UT_ASSERT_GRATER(a, b, fmt, ...) \
    if((a)>(b)){\
        PASSED_LOG(fmt,##__VA_ARGS__);\
    }else{\
        FAILED_LOG(fmt,##__VA_ARGS__);\
    }
#endif

#endif //LDID_UNITTEST_H
