package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_382:int = 0;
      
      private var var_1608:int = 0;
      
      private var var_1607:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_382;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1608;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1607;
      }
      
      public function flush() : Boolean
      {
         this.var_382 = 0;
         this.var_1608 = 0;
         this.var_1607 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_382 = param1.readInteger();
         this.var_1608 = param1.readInteger();
         this.var_1607 = param1.readString();
         return true;
      }
   }
}
