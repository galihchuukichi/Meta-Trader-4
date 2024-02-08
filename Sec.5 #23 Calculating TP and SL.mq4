//+------------------------------------------------------------------+
//|                              Sec.5 #23 Calculating TP and SL.mq4 |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#include <Sec.5 #22 Useful Function Lib.mqh>

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   double signalPrice = 1.58679;
   int slPips = 30, tpPips = 40;
   
   //  CONTRA TREND TEKNIK
   if(Ask < signalPrice){
      // BUY
      double tp = Ask+tpPips*getThePipValue();
      double sl = Ask-slPips*getThePipValue();
      
      Alert("");
      Alert("Buy now at: " + Ask);
      Alert("TP: " + tp);
      Alert("SL: " + sl);
   } else if(Bid > signalPrice){
      // SELL
      double tp = Bid - tpPips*getThePipValue();
      double sl = Bid + slPips*getThePipValue();
      
      Alert("");
      Alert("Sell now at: " + Bid);
      Alert("TP: " + tp);
      Alert("SL: " + sl);
   }
   
  }
//+------------------------------------------------------------------+
