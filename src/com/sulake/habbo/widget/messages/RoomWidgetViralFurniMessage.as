package com.sulake.habbo.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_840:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_171:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_382:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_382;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_382 = param1;
      }
   }
}
