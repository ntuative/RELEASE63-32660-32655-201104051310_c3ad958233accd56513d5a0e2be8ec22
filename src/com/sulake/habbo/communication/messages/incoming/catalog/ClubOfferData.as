package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1668:String;
      
      private var var_1669:int;
      
      private var var_2282:Boolean;
      
      private var var_2283:Boolean;
      
      private var var_2281:int;
      
      private var var_2285:int;
      
      private var var_2280:int;
      
      private var var_2279:int;
      
      private var var_2284:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1668 = param1.readString();
         this.var_1669 = param1.readInteger();
         this.var_2282 = param1.readBoolean();
         this.var_2283 = param1.readBoolean();
         this.var_2281 = param1.readInteger();
         this.var_2285 = param1.readInteger();
         this.var_2280 = param1.readInteger();
         this.var_2279 = param1.readInteger();
         this.var_2284 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1668;
      }
      
      public function get price() : int
      {
         return this.var_1669;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2282;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2283;
      }
      
      public function get periods() : int
      {
         return this.var_2281;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2285;
      }
      
      public function get year() : int
      {
         return this.var_2280;
      }
      
      public function get month() : int
      {
         return this.var_2279;
      }
      
      public function get day() : int
      {
         return this.var_2284;
      }
   }
}
