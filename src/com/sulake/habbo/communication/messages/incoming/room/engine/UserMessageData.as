package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1019:String = "M";
      
      public static const const_1685:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_364:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_1006:String = "";
      
      private var var_657:String = "";
      
      private var var_2387:String = "";
      
      private var var_2109:int;
      
      private var var_2390:int = 0;
      
      private var var_2388:String = "";
      
      private var var_2389:int = 0;
      
      private var var_2386:int = 0;
      
      private var var_2660:String = "";
      
      private var var_189:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_189 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_189)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_172 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_171 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_364;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_364 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_189)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_189)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1006;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_1006 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_657;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_657 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2387;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_2387 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2109;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2109 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2390;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2390 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2388;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_2388 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2389;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2389 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2386;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2386 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2660;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_2660 = param1;
         }
      }
   }
}
