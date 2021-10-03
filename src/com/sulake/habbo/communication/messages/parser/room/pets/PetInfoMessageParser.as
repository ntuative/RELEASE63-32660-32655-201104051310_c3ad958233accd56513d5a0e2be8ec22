package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1639:int;
      
      private var _name:String;
      
      private var var_1447:int;
      
      private var var_2580:int;
      
      private var var_2346:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_657:String;
      
      private var var_2583:int;
      
      private var var_2581:int;
      
      private var var_2582:int;
      
      private var var_2455:int;
      
      private var var_2345:int;
      
      private var _ownerName:String;
      
      private var var_527:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1639;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1447;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2580;
      }
      
      public function get experience() : int
      {
         return this.var_2346;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_657;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2583;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2581;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2582;
      }
      
      public function get respect() : int
      {
         return this.var_2455;
      }
      
      public function get ownerId() : int
      {
         return this.var_2345;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_527;
      }
      
      public function flush() : Boolean
      {
         this.var_1639 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1639 = param1.readInteger();
         this._name = param1.readString();
         this.var_1447 = param1.readInteger();
         this.var_2580 = param1.readInteger();
         this.var_2346 = param1.readInteger();
         this.var_2583 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2581 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2582 = param1.readInteger();
         this.var_657 = param1.readString();
         this.var_2455 = param1.readInteger();
         this.var_2345 = param1.readInteger();
         this.var_527 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
