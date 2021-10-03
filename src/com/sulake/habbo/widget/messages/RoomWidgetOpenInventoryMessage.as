package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_919:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1100:String = "inventory_effects";
      
      public static const const_1124:String = "inventory_badges";
      
      public static const const_1644:String = "inventory_clothes";
      
      public static const const_1530:String = "inventory_furniture";
       
      
      private var var_2446:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_919);
         this.var_2446 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2446;
      }
   }
}
