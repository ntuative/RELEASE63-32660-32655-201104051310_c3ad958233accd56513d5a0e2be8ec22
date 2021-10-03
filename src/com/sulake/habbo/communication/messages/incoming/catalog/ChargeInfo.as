package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2426:int;
      
      private var var_2558:int;
      
      private var var_1272:int;
      
      private var var_1274:int;
      
      private var _activityPointType:int;
      
      private var var_2559:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2426 = param1.readInteger();
         this.var_2558 = param1.readInteger();
         this.var_1272 = param1.readInteger();
         this.var_1274 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         this.var_2559 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2426;
      }
      
      public function get charges() : int
      {
         return this.var_2558;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1272;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1274;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2559;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
   }
}
