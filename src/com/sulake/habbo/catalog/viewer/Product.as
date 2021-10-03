package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import flash.display.BitmapData;
   
   public class Product extends ProductGridItem implements IProduct, IGetImageListener
   {
       
      
      private var var_1571:String;
      
      private var var_1803:int;
      
      private var var_1570:String;
      
      private var var_1569:int;
      
      private var var_2038:int;
      
      private var var_2039:IProductData;
      
      private var _furnitureData:IFurnitureData;
      
      public function Product(param1:String, param2:int, param3:String, param4:int, param5:int, param6:IProductData, param7:IFurnitureData)
      {
         super();
         this.var_1571 = param1;
         this.var_1803 = param2;
         this.var_1570 = param3;
         this.var_1569 = param4;
         this.var_2038 = param5;
         this.var_2039 = param6;
         this._furnitureData = param7;
      }
      
      public function get productType() : String
      {
         return this.var_1571;
      }
      
      public function get productClassId() : int
      {
         return this.var_1803;
      }
      
      public function get extraParam() : String
      {
         return this.var_1570;
      }
      
      public function get productCount() : int
      {
         return this.var_1569;
      }
      
      public function get expiration() : int
      {
         return this.var_2038;
      }
      
      public function get productData() : IProductData
      {
         return this.var_2039;
      }
      
      public function get furnitureData() : IFurnitureData
      {
         return this._furnitureData;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_1571 = "";
         this.var_1803 = 0;
         this.var_1570 = "";
         this.var_1569 = 0;
         this.var_2038 = 0;
         this.var_2039 = null;
      }
      
      public function initIcon(param1:IProductContainer, param2:IGetImageListener = null) : BitmapData
      {
         var _loc6_:* = null;
         var _loc3_:* = null;
         if(param2 == null)
         {
            param2 = {};
         }
         var _loc4_:IRoomEngine = (param1 as ProductContainer).offer.page.viewer.roomEngine;
         var _loc5_:IHabboCatalog = (param1 as ProductContainer).offer.page.viewer.catalog;
         switch(this.var_1571)
         {
            case ProductTypeEnum.const_77:
               _loc6_ = _loc4_.getFurnitureIcon(this.productClassId,param2);
               break;
            case ProductTypeEnum.const_72:
               _loc6_ = _loc4_.getWallItemIcon(this.productClassId,param2,this.var_1570);
               break;
            case ProductTypeEnum.const_186:
               _loc3_ = _loc5_.method_11(this.productClassId);
               break;
            case ProductTypeEnum.const_342:
               _loc3_ = _loc5_.getSubscriptionProductIcon(this.productClassId);
               break;
            default:
               Logger.log("[Product] Can not yet handle this type of product: " + this.productType);
         }
         if(_loc6_ != null)
         {
            _loc3_ = _loc6_.data;
            if(param2 == this)
            {
               this.setIconImage(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         Logger.log("[Product] Bundle Icon Image Ready!" + param1);
         setIconImage(param2);
      }
      
      override public function set view(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!param1)
         {
            return;
         }
         super.view = param1;
         if(this.var_1569 > 1)
         {
            _loc2_ = _view.findChildByName("multiContainer");
            if(_loc2_)
            {
               _loc2_.visible = true;
            }
            _loc3_ = _view.findChildByName("multiCounter") as ITextWindow;
            if(_loc3_)
            {
               _loc3_.text = "x" + this.productCount;
            }
         }
      }
   }
}
