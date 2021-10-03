package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InfoHotelClosedMessageParser implements IMessageParser
   {
       
      
      private var _openHour:int;
      
      private var var_1785:int;
      
      private var var_1784:Boolean;
      
      public function InfoHotelClosedMessageParser()
      {
         super();
      }
      
      public function get openHour() : int
      {
         return this._openHour;
      }
      
      public function get openMinute() : int
      {
         return this.var_1785;
      }
      
      public function get userThrownOutAtClose() : Boolean
      {
         return this.var_1784;
      }
      
      public function flush() : Boolean
      {
         this._openHour = 0;
         this.var_1785 = 0;
         this.var_1784 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._openHour = param1.readInteger();
         this.var_1785 = param1.readInteger();
         this.var_1784 = param1.readInteger() > 0;
         return true;
      }
   }
}
