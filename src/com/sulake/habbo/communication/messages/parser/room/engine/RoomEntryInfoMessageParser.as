package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2043:Boolean;
      
      private var var_2852:int;
      
      private var var_454:Boolean;
      
      private var var_1292:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_2043;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2852;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1292;
      }
      
      public function get owner() : Boolean
      {
         return this.var_454;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1292 != null)
         {
            this.var_1292.dispose();
            this.var_1292 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2043 = param1.readBoolean();
         if(this.var_2043)
         {
            this.var_2852 = param1.readInteger();
            this.var_454 = param1.readBoolean();
         }
         else
         {
            this.var_1292 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
