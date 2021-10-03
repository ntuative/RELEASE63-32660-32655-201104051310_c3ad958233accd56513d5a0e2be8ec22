package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2090:String;
      
      protected var var_1354:Number;
      
      protected var var_2863:Boolean;
      
      protected var var_2862:Boolean;
      
      protected var var_2436:Boolean;
      
      protected var var_2802:Boolean;
      
      protected var var_2867:int;
      
      protected var var_2433:int;
      
      protected var var_2435:int;
      
      protected var var_2431:int;
      
      protected var var_1973:String;
      
      protected var var_1961:int;
      
      protected var var_916:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2436 = param5;
         this.var_2862 = param6;
         this.var_2863 = param7;
         this.var_2802 = param8;
         this.var_2090 = param9;
         this.var_1354 = param10;
         this.var_2867 = param11;
         this.var_2433 = param12;
         this.var_2435 = param13;
         this.var_2431 = param14;
         this.var_1973 = param15;
         this.var_1961 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2090;
      }
      
      public function get extra() : Number
      {
         return this.var_1354;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2863;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2862;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2436;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2802;
      }
      
      public function get expires() : int
      {
         return this.var_2867;
      }
      
      public function get creationDay() : int
      {
         return this.var_2433;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2435;
      }
      
      public function get creationYear() : int
      {
         return this.var_2431;
      }
      
      public function get slotId() : String
      {
         return this.var_1973;
      }
      
      public function get songId() : int
      {
         return this.var_1961;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_916 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_916;
      }
   }
}
