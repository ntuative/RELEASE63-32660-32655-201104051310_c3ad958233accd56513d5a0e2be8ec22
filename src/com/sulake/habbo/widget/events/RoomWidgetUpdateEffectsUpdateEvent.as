package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_777:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_268:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_777,param2,param3);
         this.var_268 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_268;
      }
   }
}
