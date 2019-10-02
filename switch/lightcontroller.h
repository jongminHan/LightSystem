#pragma once
#include <QObject>
#include "light_interface.h"

class LightController : public QObject
{
    Q_OBJECT
public:
    explicit LightController(QObject *parent = nullptr);

private:
    local::MyLight *theLight;

public slots:
    void turnOn();
    void turnOff();
};
