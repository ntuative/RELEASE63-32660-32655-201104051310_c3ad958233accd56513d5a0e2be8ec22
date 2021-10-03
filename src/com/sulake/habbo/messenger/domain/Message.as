package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_728:int = 1;
      
      public static const const_707:int = 2;
      
      public static const const_839:int = 3;
      
      public static const const_1230:int = 4;
      
      public static const const_708:int = 5;
      
      public static const const_1137:int = 6;
       
      
      private var _type:int;
      
      private var var_1124:int;
      
      private var var_2116:String;
      
      private var var_2117:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1124 = param2;
         this.var_2116 = param3;
         this.var_2117 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2116;
      }
      
      public function get time() : String
      {
         return this.var_2117;
      }
      
      public function get senderId() : int
      {
         return this.var_1124;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
