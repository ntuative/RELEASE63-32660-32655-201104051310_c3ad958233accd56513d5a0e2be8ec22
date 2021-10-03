package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1253:int;
      
      private var var_2119:String;
      
      private var var_2120:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1253 = param1.readInteger();
         this.var_2119 = param1.readString();
         this.var_2120 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1253;
      }
      
      public function get requesterName() : String
      {
         return this.var_2119;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2120;
      }
   }
}
