package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_2010:String;
      
      private var var_1272:int;
      
      private var var_1274:int;
      
      private var _activityPointType:int;
      
      private var var_1185:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_2010 = param1.readString();
         this.var_1272 = param1.readInteger();
         this.var_1274 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1185 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1185.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_2010;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1272;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1274;
      }
      
      public function get products() : Array
      {
         return this.var_1185;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
   }
}
