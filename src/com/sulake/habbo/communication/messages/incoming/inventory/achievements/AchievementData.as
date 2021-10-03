package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1447:int;
      
      private var var_314:String;
      
      private var var_2139:int;
      
      private var var_2138:int;
      
      private var var_1817:int;
      
      private var var_2137:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1447 = param1.readInteger();
         this.var_314 = param1.readString();
         this.var_2139 = param1.readInteger();
         this.var_2138 = param1.readInteger();
         this.var_1817 = param1.readInteger();
         this.var_2137 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_314;
      }
      
      public function get level() : int
      {
         return this.var_1447;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2139;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2138;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1817;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2137;
      }
   }
}
