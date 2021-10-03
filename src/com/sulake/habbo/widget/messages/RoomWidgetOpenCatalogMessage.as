package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_404:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1183:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1153:String = "RWOCM_PIXELS";
      
      public static const const_1028:String = "RWOCM_CREDITS";
       
      
      private var var_2626:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_404);
         this.var_2626 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2626;
      }
   }
}
