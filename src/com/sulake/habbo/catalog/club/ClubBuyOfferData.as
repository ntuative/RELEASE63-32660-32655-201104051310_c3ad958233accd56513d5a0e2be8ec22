package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1668:String;
      
      private var var_1669:int;
      
      private var var_2282:Boolean;
      
      private var var_2283:Boolean;
      
      private var var_2281:int;
      
      private var var_2285:int;
      
      private var var_336:ICatalogPage;
      
      private var var_2280:int;
      
      private var var_2279:int;
      
      private var var_2284:int;
      
      private var var_1408:String;
      
      private var var_2302:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1668 = param2;
         this.var_1669 = param3;
         this.var_2282 = param4;
         this.var_2283 = param5;
         this.var_2281 = param6;
         this.var_2285 = param7;
         this.var_2280 = param8;
         this.var_2279 = param9;
         this.var_2284 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1408;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1408 = param1;
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_185;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1669;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_336;
      }
      
      public function get priceType() : String
      {
         return Offer.const_851;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1668;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_336 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2302;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2302 = param1;
      }
   }
}
