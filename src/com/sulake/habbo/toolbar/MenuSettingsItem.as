package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2193:String;
      
      private var var_2457:Array;
      
      private var var_2456:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2193 = param1;
         this.var_2457 = param2;
         this.var_2456 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2193;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2457;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2456;
      }
   }
}
