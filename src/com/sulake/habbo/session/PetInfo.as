package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1639:int;
      
      private var var_1447:int;
      
      private var var_2344:int;
      
      private var var_2346:int;
      
      private var var_2341:int;
      
      private var _energy:int;
      
      private var var_2340:int;
      
      private var _nutrition:int;
      
      private var var_2343:int;
      
      private var var_2345:int;
      
      private var _ownerName:String;
      
      private var var_2455:int;
      
      private var var_527:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1639;
      }
      
      public function get level() : int
      {
         return this.var_1447;
      }
      
      public function get levelMax() : int
      {
         return this.var_2344;
      }
      
      public function get experience() : int
      {
         return this.var_2346;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2341;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2340;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2343;
      }
      
      public function get ownerId() : int
      {
         return this.var_2345;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2455;
      }
      
      public function get age() : int
      {
         return this.var_527;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1639 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1447 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2344 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2346 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2341 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2340 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2343 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2455 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_527 = param1;
      }
   }
}
