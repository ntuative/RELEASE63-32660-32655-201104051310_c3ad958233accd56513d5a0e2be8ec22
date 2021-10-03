package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionFriendRequestEvent extends RoomSessionEvent
   {
      
      public static const const_126:String = "RSFRE_FRIEND_REQUEST";
       
      
      private var var_1253:int = 0;
      
      private var _userId:int = 0;
      
      private var _userName:String;
      
      public function RoomSessionFriendRequestEvent(param1:IRoomSession, param2:int, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_126,param1,param5,param6);
         this.var_1253 = param2;
         this._userId = param3;
         this._userName = param4;
      }
      
      public function get requestId() : int
      {
         return this.var_1253;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}
