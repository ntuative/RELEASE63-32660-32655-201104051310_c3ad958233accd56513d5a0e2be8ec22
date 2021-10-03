package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2265:int = 0;
      
      private var var_1486:String = "";
      
      private var var_1878:String = "";
      
      private var var_2264:String = "";
      
      private var var_2263:String = "";
      
      private var var_1656:int = 0;
      
      private var var_2261:int = 0;
      
      private var var_2262:int = 0;
      
      private var var_1488:int = 0;
      
      private var var_2266:int = 0;
      
      private var var_1485:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2265 = param1;
         this.var_1486 = param2;
         this.var_1878 = param3;
         this.var_2264 = param4;
         this.var_2263 = param5;
         if(param6)
         {
            this.var_1656 = 1;
         }
         else
         {
            this.var_1656 = 0;
         }
         this.var_2261 = param7;
         this.var_2262 = param8;
         this.var_1488 = param9;
         this.var_2266 = param10;
         this.var_1485 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2265,this.var_1486,this.var_1878,this.var_2264,this.var_2263,this.var_1656,this.var_2261,this.var_2262,this.var_1488,this.var_2266,this.var_1485];
      }
   }
}
