package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1643:int = 1;
      
      public static const const_1861:int = 2;
      
      public static const const_1521:int = 3;
      
      public static const const_1497:int = 4;
       
      
      private var var_1561:int = 0;
      
      private var var_1560:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1561 = 0;
         this.var_1560 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1561 = param1.readInteger();
         if(this.var_1561 == 3)
         {
            this.var_1560 = param1.readString();
         }
         else
         {
            this.var_1560 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1561;
      }
      
      public function get parameter() : String
      {
         return this.var_1560;
      }
   }
}
