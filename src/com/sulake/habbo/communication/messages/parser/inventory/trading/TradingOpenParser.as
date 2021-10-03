package com.sulake.habbo.communication.messages.parser.inventory.trading
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TradingOpenParser implements IMessageParser
   {
       
      
      private var _userID:int;
      
      private var var_1871:Boolean;
      
      private var var_1869:int;
      
      private var var_1870:Boolean;
      
      public function TradingOpenParser()
      {
         super();
      }
      
      public function get userID() : int
      {
         return this._userID;
      }
      
      public function get userCanTrade() : Boolean
      {
         return this.var_1871;
      }
      
      public function get otherUserID() : int
      {
         return this.var_1869;
      }
      
      public function get otherUserCanTrade() : Boolean
      {
         return this.var_1870;
      }
      
      public function flush() : Boolean
      {
         this._userID = -1;
         this.var_1871 = false;
         this.var_1869 = -1;
         this.var_1870 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._userID = param1.readInteger();
         this.var_1871 = param1.readInteger() == 1;
         this.var_1869 = param1.readInteger();
         this.var_1870 = param1.readInteger() == 1;
         return true;
      }
   }
}
