//---------------------------------------------------------
//I2ccom.h
//---------------------------------------------------------
#ifndef COMMSER_H_INCLUDE
#define COMMSER_H_INCLUDE

#include <arduino.h>

//クラスの定義
class CommSer
{
public:
    CommSer();
    void init(void);
    void Answer(int argStatus, String argComand, int argValue);

private:
    int status; //現在のステータス
};

#endif