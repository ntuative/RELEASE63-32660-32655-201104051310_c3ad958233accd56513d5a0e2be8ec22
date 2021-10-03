package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_761:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2297:String;
      
      private var var_2460:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_761,param3,param4);
         this.var_2297 = param1;
         this.var_2460 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2297;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2460;
      }
   }
}
