package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1528:Boolean;
      
      private var var_2839:int;
      
      private var var_2029:int;
      
      private var var_2030:int;
      
      private var var_2840:int;
      
      private var var_2841:int;
      
      private var var_2842:int;
      
      private var var_2817:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1528;
      }
      
      public function get commission() : int
      {
         return this.var_2839;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2029;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2030;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2841;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2840;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2842;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2817;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1528 = param1.readBoolean();
         this.var_2839 = param1.readInteger();
         this.var_2029 = param1.readInteger();
         this.var_2030 = param1.readInteger();
         this.var_2841 = param1.readInteger();
         this.var_2840 = param1.readInteger();
         this.var_2842 = param1.readInteger();
         this.var_2817 = param1.readInteger();
         return true;
      }
   }
}
