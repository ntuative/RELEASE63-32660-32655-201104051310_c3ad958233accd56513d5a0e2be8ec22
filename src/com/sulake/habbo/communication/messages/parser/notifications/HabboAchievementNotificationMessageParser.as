package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1447:int;
      
      private var var_1850:int;
      
      private var var_2138:int;
      
      private var var_1817:int;
      
      private var var_1446:int;
      
      private var var_2297:String = "";
      
      private var var_2298:String = "";
      
      private var var_2299:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1447 = param1.readInteger();
         this.var_2297 = param1.readString();
         this.var_1850 = param1.readInteger();
         this.var_2138 = param1.readInteger();
         this.var_1817 = param1.readInteger();
         this.var_1446 = param1.readInteger();
         this.var_2299 = param1.readInteger();
         this.var_2298 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1447;
      }
      
      public function get points() : int
      {
         return this.var_1850;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2138;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1817;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1446;
      }
      
      public function get badgeID() : String
      {
         return this.var_2297;
      }
      
      public function get achievementID() : int
      {
         return this.var_2299;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2298;
      }
   }
}
