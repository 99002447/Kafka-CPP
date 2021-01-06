TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += no_lflags_merge

SOURCES += \
    main.cpp \
    ../librdkafka/win32/wingetopt.c \
    ../librdkafka/win32/wingetopt.h

INCLUDEPATH += \
    ../librdkafka/include

LIBS += \
    ../librdkafka/lib/librdkafka++.a \
    ../librdkafka/lib/librdkafka.a \
    -lcrypt32 -lws2_32 -lsecur32 -lcrypt32 -lws2_32 -lsecur32 -lm -lkernel32 -luser32 -lgdi32 \
    -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32


DEFINES += \
    ENABLE_DEVEL=0 LIBRDKAFKA_STATICLIB UNICODE WINVER=0x0603 \
    WITHOUT_WIN32_CONFIG WITH_PLUGIN=0 WITH_SASL_OAUTHBEARER=0 \
    WITH_SASL_SCRAM=0 WITH_SNAPPY=0 WITH_SSL=0 WITH_ZLIB=0 WITH_ZSTD=0 _WIN32_WINNT=0x0603
