package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_1006:String = "";
      
      private var var_657:String = "";
      
      private var var_2387:String = "";
      
      private var var_2109:int;
      
      private var var_2390:int = 0;
      
      private var var_2388:String = "";
      
      private var var_2389:int = 0;
      
      private var var_2386:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2109;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2109 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_1006;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_1006 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_657;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_657 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2387;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2387 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2390;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2390 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2388;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2388 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2389;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2389 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2386;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2386 = param1;
      }
   }
}
