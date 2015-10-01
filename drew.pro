#-------------------------------------------------
#
# Project created by QtCreator 2015-10-01T00:43:45
#
#-------------------------------------------------

QT       -= core gui

TARGET = drew
TEMPLATE = lib
CONFIG += c++11

LIBS += \
    -lSDL2 \
    -lGL \
    -lGLU \
    -lGLEW

DEFINES += DREW_LIBRARY

SOURCES += \
    src/draw.cpp \
    src/window.cpp

HEADERS += \
    src/draw.h \
    src/window.h

unix {
    isEmpty(PREFIX) {
        PREFIX = /usr/local
    }
    target.path = $$PREFIX/lib
    INSTALLS += target
    headers.path = $$PREFIX/include/drew
    headers.files = src/*.h
    INSTALLS += headers
}
