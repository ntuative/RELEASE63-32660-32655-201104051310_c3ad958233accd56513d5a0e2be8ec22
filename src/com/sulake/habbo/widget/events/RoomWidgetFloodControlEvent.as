package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_655:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1931:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_655,false,false);
         this.var_1931 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1931;
      }
   }
}