package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_250:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2148:int = 0;
      
      private var var_2147:int = 0;
      
      private var var_2146:int = 0;
      
      private var var_2145:Boolean = false;
      
      private var var_2136:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_250,param6,param7);
         this.var_2148 = param1;
         this.var_2147 = param2;
         this.var_2146 = param3;
         this.var_2145 = param4;
         this.var_2136 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2148;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2147;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2146;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2145;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2136;
      }
   }
}
