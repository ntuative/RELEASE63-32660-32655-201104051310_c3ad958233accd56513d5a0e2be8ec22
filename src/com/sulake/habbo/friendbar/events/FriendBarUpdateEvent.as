package com.sulake.habbo.friendbar.events
{
   import flash.events.Event;
   
   public class FriendBarUpdateEvent extends Event
   {
      
      public static const const_1992:String = "FBE_CREATED";
      
      public static const const_528:String = "FBE_UPDATED";
       
      
      public function FriendBarUpdateEvent(param1:String)
      {
         super(param1,false,false);
      }
   }
}
