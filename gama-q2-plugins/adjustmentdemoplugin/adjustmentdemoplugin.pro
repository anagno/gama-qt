QT       += core gui sql widgets
TEMPLATE     = lib
CONFIG      += plugin
INCLUDEPATH +=  ../../gama-q2
INCLUDEPATH +=  ../../gama-q2/lib/gama/lib
TARGET       = $$qtLibraryTarget(adjustmentdemoplugin)

SOURCES += \
    adjustmentdemoplugin.cpp

HEADERS += \
    adjustmentdemoplugin.h

win32 {
     CONFIG(debug, release|debug):DESTDIR = ../../gama-q2/debug/plugins
     CONFIG(release, release|debug):DESTDIR = ../../gama-q2/release/plugins
 } else {
     DESTDIR = ../../gama-q2/plugins
 }

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../gama/release/ -lgama
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../gama/debug/ -lgama
else:unix: LIBS += -L$$OUT_PWD/../../gama/ -lgama

INCLUDEPATH += $$PWD/../../gama
DEPENDPATH += $$PWD/../../gama

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../gama/release/libgama.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../gama/debug/libgama.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../gama/release/gama.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../gama/debug/gama.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../../gama/libgama.a
