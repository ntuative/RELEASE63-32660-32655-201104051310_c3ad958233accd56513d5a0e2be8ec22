package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssueCloseNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_2618:int;
      
      public function IssueCloseNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2618 = param1.readInteger();
         return true;
      }
      
      public function get method_12() : int
      {
         return this.var_2618;
      }
   }
}
