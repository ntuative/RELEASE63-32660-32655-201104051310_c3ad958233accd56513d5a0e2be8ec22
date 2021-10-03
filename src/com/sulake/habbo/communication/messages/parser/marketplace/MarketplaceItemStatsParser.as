package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2209:int;
      
      private var var_2207:int;
      
      private var var_2210:int;
      
      private var _dayOffsets:Array;
      
      private var var_1638:Array;
      
      private var var_1637:Array;
      
      private var var_2211:int;
      
      private var var_2208:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2209;
      }
      
      public function get offerCount() : int
      {
         return this.var_2207;
      }
      
      public function get historyLength() : int
      {
         return this.var_2210;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1638;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1637;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2211;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2208;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2209 = param1.readInteger();
         this.var_2207 = param1.readInteger();
         this.var_2210 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1638 = [];
         this.var_1637 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1638.push(param1.readInteger());
            this.var_1637.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2208 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         return true;
      }
   }
}
