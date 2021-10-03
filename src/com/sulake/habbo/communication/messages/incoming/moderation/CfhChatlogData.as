package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1919:int;
      
      private var var_2627:int;
      
      private var var_1511:int;
      
      private var var_2541:int;
      
      private var var_118:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1919 = param1.readInteger();
         this.var_2627 = param1.readInteger();
         this.var_1511 = param1.readInteger();
         this.var_2541 = param1.readInteger();
         this.var_118 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1919);
      }
      
      public function get callId() : int
      {
         return this.var_1919;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2627;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1511;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2541;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_118;
      }
   }
}
