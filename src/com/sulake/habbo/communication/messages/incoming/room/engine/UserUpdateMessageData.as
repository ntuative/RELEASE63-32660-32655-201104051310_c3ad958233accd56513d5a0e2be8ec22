package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_2443:Number = 0;
      
      private var var_2444:Number = 0;
      
      private var var_2445:Number = 0;
      
      private var var_2442:Number = 0;
      
      private var var_364:int = 0;
      
      private var var_2401:int = 0;
      
      private var var_332:Array;
      
      private var var_2441:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_332 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_172 = param3;
         this.var_171 = param4;
         this.var_2443 = param5;
         this.var_364 = param6;
         this.var_2401 = param7;
         this.var_2444 = param8;
         this.var_2445 = param9;
         this.var_2442 = param10;
         this.var_2441 = param11;
         this.var_332 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function get localZ() : Number
      {
         return this.var_2443;
      }
      
      public function get targetX() : Number
      {
         return this.var_2444;
      }
      
      public function get targetY() : Number
      {
         return this.var_2445;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2442;
      }
      
      public function get dir() : int
      {
         return this.var_364;
      }
      
      public function get dirHead() : int
      {
         return this.var_2401;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2441;
      }
      
      public function get actions() : Array
      {
         return this.var_332.slice();
      }
   }
}
