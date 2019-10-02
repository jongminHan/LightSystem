#include "mylight.h"
#include "light_adaptor.h"


MyLight::MyLight(QObject *parent)
    : QObject(parent)
    , mIsOn(false)
{
    // Create interface adaptor
    new MyLightAdaptor(this);
}


bool MyLight::getIsOn() const
{
    return mIsOn;
}


void MyLight::setIsOn(bool isOn)
{
    if(mIsOn != isOn)
    {
        mIsOn = isOn;
        emit lightChanged();
    }
}


void MyLight::turnOn()
{
    setIsOn(true);
}


void MyLight::turnOff()
{
    setIsOn(false);
}
