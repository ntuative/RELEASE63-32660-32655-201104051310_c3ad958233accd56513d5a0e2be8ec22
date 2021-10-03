package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_657:String;
      
      private var var_2342:String;
      
      private var var_1003:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_657 = param1;
         this.var_1003 = param2;
         this.var_2342 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_657;
      }
      
      public function get race() : String
      {
         return this.var_2342;
      }
      
      public function get gender() : String
      {
         return this.var_1003;
      }
   }
}
