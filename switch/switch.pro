TEMPLATE = app

QT += qml quick dbus
CONFIG += c++11

DBUS_INTERFACES += ../interface/light.xml

SOURCES += main.cpp \
    lightcontroller.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    lightcontroller.h
