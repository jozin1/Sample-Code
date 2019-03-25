#include <Wire.h>
#include <VL53L0X.h>
#define P1 5 
#define P2 6
#define L1 11
#define L2 10
#include <SoftwareSerial.h>

VL53L0X sensor;
int b,laser=500,vc=50,r=0, Range = 400;
double i=0,j=0,k=0;
char a;
String s;
SoftwareSerial mySerial(9, 8); // RX, TXdouble

void setup() {
  mySerial.begin(115200);
  delay(1000);
  b= (analogRead(0)+analogRead(1))/2;
  b=b-20;
  delay(2000);
  pinMode(L1,OUTPUT);
  pinMode(L2,OUTPUT);
  pinMode(P1,OUTPUT);
  pinMode(P2,OUTPUT);
  Wire.begin();
  sensor.init();
  sensor.setTimeout(500);
  sensor.startContinuous();
}

void loop()
{
  if (mySerial.available()) 
  {
    a=mySerial.read();
    }
      if(a=='r')
      {
        if (mySerial.available()) 
        {
          prostoR(0,true);
          a=mySerial.read();
          r = a - '0';
        }
      }
  if(r==0)
  {
   prosto(50,true);

    laser=sensor.readRangeContinuousMillimeters();
    
    if(millis()-i>200)
    {
      s="x";
      s+=laser;
      mySerial.print(s);
      i=millis();
    }
    
    if(laser<200)
    {
       exterminate();
    }
    
  if(analogRead(0)<b && analogRead(1)> b)
    {
      prosto(60,false);
      delay(300);
      skrec(70,false);
    }
    
  if(analogRead(1)<b && analogRead(0)> b)
    {
      prosto(60,false);
      delay(300);
      skrec(70,true);
    }
    
  if(analogRead(1)<b && analogRead(0)< b)
    {
      prosto(60,false);
      delay(300);
      skrec(70,false);
    }
  }
  if(r==1)
  {
    sterowanieReczne();
  }
}

  void predkosc (int a,int b,int v,bool kier)
  {
   if(a == P1) v = v*korekcja(v);
   if(kier)
   {
      analogWrite(a,2.55*v);  
      digitalWrite(b,LOW);   
   }
   else 
   {
      digitalWrite(a,LOW);
      analogWrite(b,2.55*v);
   }
   if(a==P1)
   {    
      if(millis()-k>190)
      {
        if(v!=0)
        {
          if(kier)
          {
            s="r";
            s+=v;
            mySerial.print(s);
          }
          else
          {
            s="r";
            s+=-v;
            mySerial.print(s);
          }
      
        }
        else
        {
          mySerial.print("or");
        }
        k=millis();
      }
    }  
    else
    {
      if(millis()-j>210)
      {
        if(v!=0)
        {
          if(kier)
          {
            s="l";
            s+=v;
            mySerial.print(s);
          }
          else
          {
            s="l";
            s+=-v;
            mySerial.print(s);
          }
        }
        else
        {
          mySerial.print("ol");
        }
        j=millis();
        }          
    }
 }

 void prosto(int v, bool kier)
 {
    predkosc(L1,L2,v,kier);
    predkosc(P1,P2,v,kier);
 }
 
 void prostoR(int v, bool kier)
 {
    predkoscR(L1,L2,v,kier);
    predkoscR(P1,P2,v,kier);
 }

 void predkoscR (int a,int b,int v,bool kier)
 {
   if(a == P1) v = v*korekcja(v);
   if(kier)
   {
      analogWrite(a,2.55*v);  
      digitalWrite(b,LOW);   
   }
   else 
   {
      digitalWrite(a,LOW);
      analogWrite(b,2.55*v);
   }
 }

 void skrec(double a, bool leri)
 {
    int i=0;
    if(leri)
    {
      while(i<a/360*1000)
      {
        predkosc(P1,P2,50,true);
        predkosc(L1,L2,50,false);
        if(sensor.readRangeContinuousMillimeters()<Range)
        {
          predkosc(P1,P2,50,false);
          predkosc(L1,L2,50,true);
          delay(10);
          exterminate();
          break;    
        }
        delay(5);
        i=i+5;
       }
    }
    else
    {
      while(i<a/360*1000)
      {
        predkosc(P1,P2,50,false);
        predkosc(L1,L2,50,true);
           if(sensor.readRangeContinuousMillimeters()<Range)
           {
             predkosc(P1,P2,50,true);
             predkosc(L1,L2,50,false);
             delay(10);
             exterminate();
             break;
           }
        delay(5);
        i=i+5;
      }
    }
  }

  int exterminate()
  {
    while(1)
    {
      prosto(80,true);
      laser=sensor.readRangeContinuousMillimeters();
      if(millis()-i>200)
      {
        s="x";
        s+=laser;
        mySerial.print(s);       
        i = millis();
      }
      if(laser>200)
      { 
        break;
      }
      if(analogRead(0)<b||analogRead(1)<b)
      {
        prosto(70,false);
        delay(500);
        predkosc(P1,P2,50,true);
        predkosc(L1,L2,50,false);
        delay(250);
        break;
      }
    }
  }

  double korekcja(int v)
  {
    if(v == 50) return 0.9;
    if(v == 60) return 0.85;
    if(v == 70) return 0.8;
    if(v == 80) return 0.75;
    if(v == 90) return 0.7;
    if(v == 100) return 0.65;
  }

  void sterowanieReczne()
  {
    if(a=='v')
    {
      if (mySerial.available())
      {
        a=mySerial.read();
        vc = a - '0';
        vc=(vc+1)*10;
      }
    }
    if(millis()-i>200)
    {
       laser=sensor.readRangeContinuousMillimeters();
       s="x";
       s+=laser;
       mySerial.print(s);
       i=millis();
    }
    if(a=='w')
    {
      prostoR(vc,true);
    }
    if(a=='a')
    {
       predkoscR(L1,L2,vc,false);
       predkoscR(P1,P2,vc,true);
    }
    if(a=='s')
    {
       prostoR(vc,false);
    }
    if(a=='d')
    {
       predkoscR(L1,L2,vc,true);
       predkoscR(P1,P2,vc,false);
    }
    if(a=='q')
    {
      predkoscR(L1,L2,vc/3,true);
      predkoscR(P1,P2,vc,true);
    }
    if(a=='e')
    {
      predkoscR(L1,L2,vc,true);
      predkoscR(P1,P2,vc/3,true);
    }
    if(a=='z')
    {
      predkoscR(L1,L2,vc/3,false);
      predkoscR(P1,P2,vc,false);
    }
    if(a=='x')
    {
      predkoscR(L1,L2,vc,false);
      predkoscR(P1,P2,vc/3,false);
    }
    if(a=='n')
    {
      predkoscR(L1,L2,0,true);
      predkoscR(P1,P2,0,false);
    }
  }


