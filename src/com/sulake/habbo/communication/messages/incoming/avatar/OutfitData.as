package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1973:int;
      
      private var var_2111:String;
      
      private var var_1003:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1973 = param1.readInteger();
         this.var_2111 = param1.readString();
         this.var_1003 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1973;
      }
      
      public function get figureString() : String
      {
         return this.var_2111;
      }
      
      public function get gender() : String
      {
         return this.var_1003;
      }
   }
}
