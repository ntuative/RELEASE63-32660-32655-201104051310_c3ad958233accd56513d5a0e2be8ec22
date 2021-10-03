package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_473:String = "RWTDUE_TEASER_DATA";
      
      public static const const_844:String = "RWTDUE_GIFT_DATA";
      
      public static const const_799:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_382:int;
      
      private var _data:String;
      
      private var var_400:int;
      
      private var var_177:String;
      
      private var var_2234:String;
      
      private var var_2233:Boolean;
      
      private var var_1326:int = 0;
      
      private var var_2399:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_382;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_400;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2234;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2233;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2399;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1326;
      }
      
      public function set status(param1:int) : void
      {
         this.var_400 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2234 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2233 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2399 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_382 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_177;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_177 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1326 = param1;
      }
   }
}
