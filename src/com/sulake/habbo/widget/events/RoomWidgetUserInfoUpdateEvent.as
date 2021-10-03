package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_124:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_155:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1227:int = 2;
      
      public static const const_1033:int = 3;
      
      public static const const_1651:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1685:String = "";
      
      private var var_2109:int;
      
      private var var_2390:int = 0;
      
      private var var_2386:int = 0;
      
      private var var_657:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_282:Array;
      
      private var var_1728:Array;
      
      private var var_1323:int = 0;
      
      private var var_2353:String = "";
      
      private var var_2351:int = 0;
      
      private var var_2352:int = 0;
      
      private var var_1926:Boolean = false;
      
      private var var_1688:String = "";
      
      private var var_2651:Boolean = false;
      
      private var var_2650:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2646:Boolean = false;
      
      private var var_2648:Boolean = false;
      
      private var var_2647:Boolean = false;
      
      private var var_2644:Boolean = false;
      
      private var var_2649:Boolean = false;
      
      private var var_2645:Boolean = false;
      
      private var var_2652:int = 0;
      
      private var var_1927:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_282 = [];
         this.var_1728 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1685 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1685;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2109 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2109;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2390 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2390;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2386 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2386;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_657 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_657;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_282 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_282;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1728;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1728 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1323 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1323;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2353 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2353;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2651 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2651;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2646 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2646;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2648 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2648;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2647 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2647;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2644 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2644;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2649 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2649;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2645 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2645;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2652 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2652;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2650 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2650;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1927 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1927;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2351 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2351;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2352 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2352;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1926 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1926;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1688 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1688;
      }
   }
}
