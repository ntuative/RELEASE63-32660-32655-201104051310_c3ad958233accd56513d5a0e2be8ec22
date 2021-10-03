package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_400:int;
      
      private var _type:String;
      
      private var var_1777:String;
      
      private var var_1776:int;
      
      private var var_1778:String;
      
      private var var_760:String;
      
      private var var_1775:String;
      
      private var var_2416:String;
      
      private var var_2414:uint;
      
      private var var_2415:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_400 = param1.readInteger();
         this._type = param1.readString();
         this.var_1777 = param1.readString();
         this.var_1776 = param1.readInteger();
         this.var_1778 = param1.readString();
         this.var_760 = param1.readString();
         this.var_2416 = param1.readString();
         this.var_2415 = param1.readInteger();
         var _loc2_:String = "";
         var _loc3_:int = this.var_760.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_760.charAt(_loc3_)))
         {
            _loc2_ = this.var_760.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1775 = this.var_760.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1775 = this.var_760;
         }
         this.var_2414 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_400 = 0;
         this._type = "";
         this.var_1777 = "";
         this.var_1776 = 0;
         this.var_1778 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_400;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1777;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1776;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1778;
      }
      
      public function get localizationCode() : String
      {
         return this.var_760;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2414;
      }
      
      public function get sortOrder() : uint
      {
         return this.var_2415;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1775;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2416;
      }
   }
}
