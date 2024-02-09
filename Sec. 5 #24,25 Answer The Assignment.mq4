//+------------------------------------------------------------------+
//|                                        Sec.5 #24 Assignments.mq4 |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#include <Sec.5 #24 Assignments.mqh>
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   bool isLongPosition = 1;
   double currentPrice = 1900.00;
   int tpPoints = 200, slPoints = 100;
   
   Alert("");
   Alert("TP : " + calculateTakeProfit(isLongPosition, currentPrice, calculatePointsToPrice(tpPoints)));
   Alert("SL : " + calculateStopLoss(isLongPosition, currentPrice, calculatePointsToPrice(slPoints)));
   
  }
//+------------------------------------------------------------------+





//+------------------------------------------------------------------+
//|                                        Sec.5 #24 Assignments.mqh |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property strict
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+

double calculatePointsToPrice(int points){
   int powerNumber = pow(10,_Digits);
   return points / powerNumber;
}

double calculateTakeProfit(bool bIsLongPosition, double currentPrice, double tpPips){
   if(bIsLongPosition){
      return currentPrice + tpPips;
   } else {
      return currentPrice - tpPips;
   }
 }
 
 double calculateStopLoss(bool bIsLongPosition, double currentPrice, double slPips){
   if(bIsLongPosition){
      return currentPrice - slPips;
   } else {
      return currentPrice + slPips;
   }
 }



//+------------------------------------------------------------------+
//|                             Sec. 5 #25 Answer The Assignment.mq4 |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
// MY ASSIGNMENT IS CORRECT!
// SEE The  Sec.5 #24 Assignments.mq4
   
  }
//+------------------------------------------------------------------+
