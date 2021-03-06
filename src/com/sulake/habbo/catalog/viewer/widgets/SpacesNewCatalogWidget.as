package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.components.ISelectorWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.catalog.viewer.IGridItem;
   import com.sulake.habbo.catalog.viewer.IItemGrid;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.ProductContainer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetUpdateRoomPreviewEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetsInitializedEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class SpacesNewCatalogWidget extends ItemGridCatalogWidget implements IDisposable, ICatalogWidget, IItemGrid
   {
       
      
      private var var_184:XML;
      
      private var _groupNames:Array;
      
      private var var_217:Array;
      
      private var var_581:int = 0;
      
      private var var_719:Array;
      
      private var var_444:ISelectorWindow;
      
      private var var_101:Array;
      
      public function SpacesNewCatalogWidget(param1:IWindowContainer)
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         this._groupNames = ["wallpaper","floor","landscape"];
         this.var_217 = new Array();
         this.var_719 = [0,0,0];
         this.var_101 = ["group.walls","group.floors","group.views"];
         super(param1);
         this.var_444 = _window.findChildByName("groups") as ISelectorWindow;
         if(this.var_444)
         {
            _loc2_ = 0;
            while(_loc2_ < this.var_444.numSelectables)
            {
               _loc3_ = this.var_444.getSelectableAt(_loc2_);
               if(_loc3_ is ISelectableWindow)
               {
                  _loc3_.addEventListener(WindowEvent.const_59,this.onSelectGroup);
               }
               _loc2_++;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         super.dispose();
         for each(_loc1_ in this.var_217)
         {
            for each(_loc2_ in _loc1_)
            {
               _loc2_.dispose();
            }
         }
         this.var_217 = null;
      }
      
      override public function init() : Boolean
      {
         Logger.log("Init Item Group Catalog Widget (Spaces New)");
         this.createOfferGroups();
         if(!super.init())
         {
            return false;
         }
         events.addEventListener(WidgetEvent.CWE_WIDGETS_INITIALIZED,this.onWidgetsInitialized);
         this.switchCategory(this.var_101[this.var_581]);
         this.updateRoomPreview();
         return true;
      }
      
      public function onWidgetsInitialized(param1:CatalogWidgetsInitializedEvent) : void
      {
         var _loc2_:int = this.var_719[this.var_581];
         var _loc3_:Offer = this.var_217[this.var_581][_loc2_];
         this.select(_loc3_.productContainer as IGridItem);
      }
      
      override public function select(param1:IGridItem) : void
      {
         if(param1 == null)
         {
            return;
         }
         super.select(param1);
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ == null)
         {
            return;
         }
         events.dispatchEvent(new SetExtraPurchaseParameterEvent(_loc2_.extraParameter));
         this.var_719[this.var_581] = (this.var_217[this.var_581] as Array).indexOf(_loc2_);
         this.updateRoomPreview();
      }
      
      private function updateRoomPreview() : void
      {
         var _loc1_:int = this.var_719[0];
         var _loc2_:int = this.var_719[1];
         var _loc3_:int = this.var_719[2];
         var _loc4_:Offer = this.var_217[0][_loc1_];
         var _loc5_:Offer = this.var_217[1][_loc2_];
         var _loc6_:Offer = this.var_217[2][_loc3_];
         if(!_loc5_ || !_loc4_ || !_loc6_)
         {
            return;
         }
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(_loc5_.extraParameter,_loc4_.extraParameter,_loc6_.extraParameter,64));
      }
      
      private function createOfferGroups() : Boolean
      {
         var offer:Offer = null;
         var product:IProduct = null;
         var classId:int = 0;
         var groupName:String = null;
         var index:int = 0;
         var offerCode:String = null;
         var offerPrefix:String = null;
         var offerPostfix:String = null;
         var pattern:XML = null;
         var itemData:XML = null;
         var cloneOffer:Offer = null;
         var configurationAsset:XmlAsset = page.viewer.catalog.assets.getAssetByName("configuration_catalog_spaces") as XmlAsset;
         if(configurationAsset != null)
         {
            this.var_184 = configurationAsset.content as XML;
            for each(offer in page.offers)
            {
               if(!(offer.pricingModel == Offer.const_393 || offer.pricingModel == Offer.const_405))
               {
                  continue;
               }
               product = offer.productContainer.firstProduct;
               if(product == null)
               {
                  continue;
               }
               classId = product.productClassId;
               if(!(product.productType == ProductTypeEnum.const_72 || product.productType == ProductTypeEnum.const_77))
               {
                  continue;
               }
               if(product.furnitureData == null)
               {
                  continue;
               }
               groupName = product.furnitureData.name;
               index = this._groupNames.indexOf(groupName);
               offerCode = offer.localizationId;
               offerPrefix = offerCode.split(" ")[0];
               offerPostfix = offerCode.split(" ")[1];
               if(this._groupNames.indexOf(groupName) == -1)
               {
                  this._groupNames.push(groupName);
               }
               while(this.var_217.length < this._groupNames.length)
               {
                  this.var_217.push(new Array());
               }
               switch(groupName)
               {
                  case "floor":
                     for each(pattern in this.var_184.floors.pattern)
                     {
                        for each(itemData in pattern.floor)
                        {
                           cloneOffer = offer.clone();
                           cloneOffer.extraParameter = itemData.@id;
                           (this.var_217[index] as Array).push(cloneOffer);
                        }
                     }
                     break;
                  case "wallpaper":
                     pattern = this.var_184.walls.pattern.(@id == offerPostfix)[0] as XML;
                     if(pattern)
                     {
                        for each(itemData in pattern.wall)
                        {
                           cloneOffer = offer.clone();
                           cloneOffer.extraParameter = itemData.@id;
                           (this.var_217[index] as Array).push(cloneOffer);
                        }
                     }
                     break;
                  case "landscape":
                     pattern = this.var_184.landscapes.pattern.(@id == offerPostfix)[0] as XML;
                     if(pattern)
                     {
                        for each(itemData in pattern.landscape)
                        {
                           cloneOffer = offer.clone();
                           cloneOffer.extraParameter = itemData.@id;
                           (this.var_217[index] as Array).push(cloneOffer);
                        }
                     }
                     break;
                  default:
                     Logger.log("[SpacesCatalogWidget] : " + groupName);
                     break;
               }
            }
            page.replaceOffers([],true);
            return true;
         }
         return false;
      }
      
      private function onSelectGroup(param1:WindowEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:ISelectableWindow = param1.target as ISelectableWindow;
         if(_loc2_)
         {
            _loc3_ = this.var_444.getSelectableIndex(_loc2_);
            Logger.log("select: " + [_loc2_.name,_loc3_]);
            this.switchCategory(_loc2_.name);
         }
      }
      
      private function switchCategory(param1:String) : void
      {
         var _loc3_:int = 0;
         if(disposed)
         {
            return;
         }
         if(!this.var_444)
         {
            return;
         }
         this.var_444.setSelected(this.var_444.getSelectableByName(param1));
         var _loc2_:int = -1;
         switch(param1)
         {
            case "group.walls":
               _loc2_ = 0;
               break;
            case "group.floors":
               _loc2_ = 1;
               break;
            case "group.views":
               _loc2_ = 2;
               break;
            default:
               _loc2_ = -1;
         }
         if(_loc2_ > -1)
         {
            if(var_396 != null)
            {
               var_396.deActivate();
            }
            var_396 = null;
            this.var_581 = _loc2_;
            if(var_473)
            {
               var_473.destroyGridItems();
            }
            page.replaceOffers(this.var_217[this.var_581],false);
            resetTimer();
            populateItemGrid();
            loadItemGridGraphics();
            if(var_202)
            {
               var_202.start();
            }
            _loc3_ = this.var_719[this.var_581];
            selectIndex(_loc3_);
         }
      }
   }
}
