package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_808:String = "RWUAM_WHISPER_USER";
      
      public static const const_900:String = "RWUAM_IGNORE_USER";
      
      public static const const_845:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_468:String = "RWUAM_KICK_USER";
      
      public static const const_835:String = "RWUAM_BAN_USER";
      
      public static const const_883:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_757:String = "RWUAM_RESPECT_USER";
      
      public static const const_734:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_668:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_807:String = "RWUAM_START_TRADING";
      
      public static const const_723:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_557:String = "RWUAM_KICK_BOT";
      
      public static const const_828:String = "RWUAM_REPORT";
      
      public static const const_502:String = "RWUAM_PICKUP_PET";
      
      public static const const_1702:String = "RWUAM_TRAIN_PET";
      
      public static const const_537:String = " RWUAM_RESPECT_PET";
      
      public static const const_411:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_767:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
