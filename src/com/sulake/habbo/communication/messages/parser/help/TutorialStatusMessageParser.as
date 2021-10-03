package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1237:Boolean;
      
      private var var_1236:Boolean;
      
      private var var_1514:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1237;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1236;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1514;
      }
      
      public function flush() : Boolean
      {
         this.var_1237 = false;
         this.var_1236 = false;
         this.var_1514 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1237 = param1.readBoolean();
         this.var_1236 = param1.readBoolean();
         this.var_1514 = param1.readBoolean();
         return true;
      }
   }
}
