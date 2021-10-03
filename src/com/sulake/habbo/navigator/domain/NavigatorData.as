package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1767:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_212:MsgWithRequestId;
      
      private var var_654:RoomEventData;
      
      private var var_2702:Boolean;
      
      private var var_2695:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2616:int;
      
      private var var_272:GuestRoomData;
      
      private var var_1002:PublicRoomShortData;
      
      private var var_2700:int;
      
      private var var_2703:Boolean;
      
      private var var_2698:int;
      
      private var var_2701:Boolean;
      
      private var var_1960:int;
      
      private var var_2694:Boolean;
      
      private var var_1429:Array;
      
      private var var_1523:Array;
      
      private var var_2696:int;
      
      private var var_1524:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1243:Boolean;
      
      private var var_2693:int;
      
      private var var_2699:Boolean;
      
      private var var_2697:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1429 = new Array();
         this.var_1523 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_272 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_272 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1002 = null;
         this.var_272 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1002 = param1.publicSpace;
            this.var_654 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_654 != null)
         {
            this.var_654.dispose();
            this.var_654 = null;
         }
         if(this.var_1002 != null)
         {
            this.var_1002.dispose();
            this.var_1002 = null;
         }
         if(this.var_272 != null)
         {
            this.var_272.dispose();
            this.var_272 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_272 != null)
         {
            this.var_272.dispose();
         }
         this.var_272 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_654 != null)
         {
            this.var_654.dispose();
         }
         this.var_654 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_212 != null && this.var_212 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_212 != null && this.var_212 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_212 != null && this.var_212 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_212 = param1;
         this.var_1243 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_212 = param1;
         this.var_1243 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_212 = param1;
         this.var_1243 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_212 == null)
         {
            return;
         }
         this.var_212.dispose();
         this.var_212 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_212 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_212 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_212 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_654;
      }
      
      public function get avatarId() : int
      {
         return this.var_2616;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2702;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2695;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_272;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1002;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2703;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2698;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1960;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2701;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2693;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2700;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2694;
      }
      
      public function get adIndex() : int
      {
         return this.var_2697;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2699;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2616 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2698 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2703 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2702 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2695 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2701 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1960 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2693 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2700 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2694 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2697 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2699 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1429 = param1;
         this.var_1523 = new Array();
         for each(_loc2_ in this.var_1429)
         {
            if(_loc2_.visible)
            {
               this.var_1523.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1429;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1523;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2696 = param1.limit;
         this.var_1524 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1524 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_272.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_272 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_272.flatId;
         return this.var_1960 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1524 >= this.var_2696;
      }
      
      public function startLoading() : void
      {
         this.var_1243 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1243;
      }
   }
}
