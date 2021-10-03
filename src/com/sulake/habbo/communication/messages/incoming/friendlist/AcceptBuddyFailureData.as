package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_911:String;
      
      private var var_1599:int;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_911 = param1.readString();
         this.var_1599 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_911;
      }
      
      public function get errorCode() : int
      {
         return this.var_1599;
      }
   }
}
