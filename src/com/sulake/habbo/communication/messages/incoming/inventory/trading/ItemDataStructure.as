package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2151:int;
      
      private var var_1416:String;
      
      private var var_2434:int;
      
      private var var_2430:int;
      
      private var _category:int;
      
      private var var_2090:String;
      
      private var var_1354:int;
      
      private var var_2432:int;
      
      private var var_2433:int;
      
      private var var_2435:int;
      
      private var var_2431:int;
      
      private var var_2436:Boolean;
      
      private var var_2934:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2151 = param1;
         this.var_1416 = param2;
         this.var_2434 = param3;
         this.var_2430 = param4;
         this._category = param5;
         this.var_2090 = param6;
         this.var_1354 = param7;
         this.var_2432 = param8;
         this.var_2433 = param9;
         this.var_2435 = param10;
         this.var_2431 = param11;
         this.var_2436 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2151;
      }
      
      public function get itemType() : String
      {
         return this.var_1416;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2434;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2430;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2090;
      }
      
      public function get extra() : int
      {
         return this.var_1354;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2432;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2436;
      }
      
      public function get songID() : int
      {
         return this.var_1354;
      }
   }
}
