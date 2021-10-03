package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.BundleProductContainer;
   import com.sulake.habbo.catalog.viewer.IDragAndDropDoneReceiver;
   import com.sulake.habbo.catalog.viewer.IGridItem;
   import com.sulake.habbo.catalog.viewer.IItemGrid;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.ProductContainer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ItemGridCatalogWidget extends CatalogWidget implements ICatalogWidget, IItemGrid, IDragAndDropDoneReceiver
   {
       
      
      protected var var_473:IItemGridWindow;
      
      protected var var_1585:XML;
      
      protected var var_396:IGridItem;
      
      private var var_2014:int = 0;
      
      protected var var_202:Timer;
      
      protected var var_203:Boolean = true;
      
      private var var_844:int = 0;
      
      private var _scrollBar:IScrollbarWindow;
      
      public function ItemGridCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
         this._scrollBar = _window.findChildByName("itemGridScrollbar") as IScrollbarWindow;
         if(this._scrollBar != null)
         {
            this._scrollBar.visible = false;
            this._scrollBar.addEventListener(WindowEvent.const_886,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_223,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_720,this.deActivateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_182,this.deActivateScrollbar);
         }
      }
      
      override public function dispose() : void
      {
         if(this.var_202 != null)
         {
            this.var_202.stop();
            this.var_202.removeEventListener(TimerEvent.TIMER,this.populateItemGrid);
            this.var_202 = null;
         }
         if(this.var_473 != null)
         {
            this.var_473.destroyGridItems();
            this.var_473 = null;
         }
         this.var_1585 = null;
         this.var_396 = null;
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         this.var_473 = _window.findChildByName("itemGrid") as IItemGridWindow;
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("gridItem") as XmlAsset;
         this.var_1585 = _loc1_.content as XML;
         this.populateItemGrid();
         this.loadItemGridGraphics();
         if(this.var_203)
         {
            this.var_202 = new Timer(25);
            this.var_202.addEventListener(TimerEvent.TIMER,this.loadItemGridGraphics);
            this.var_202.start();
         }
         return true;
      }
      
      public function selectIndex(param1:int) : void
      {
         if(param1 > -1 && param1 < this.var_473.numGridItems)
         {
            this.select(this.var_473.getGridItemAt(param1) as IGridItem);
         }
      }
      
      public function select(param1:IGridItem) : void
      {
         if(this.var_396 != null)
         {
            this.var_396.deActivate();
         }
         this.var_396 = param1;
         param1.activate();
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ != null)
         {
            events.dispatchEvent(new SelectProductEvent(_loc2_));
         }
      }
      
      public function startDragAndDrop(param1:IGridItem) : Boolean
      {
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ != null)
         {
            (page.viewer.catalog as HabboCatalog).requestSelectedItemToMover(this,_loc2_);
         }
         return true;
      }
      
      public function onDragAndDropDone(param1:Boolean) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1)
         {
            events.dispatchEvent(new CatalogWidgetInitPurchaseEvent(false));
         }
      }
      
      public function stopDragAndDrop() : void
      {
      }
      
      protected function populateItemGrid() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in page.offers)
         {
            this.createGridItem(_loc1_);
            _loc1_.productContainer.grid = this;
         }
      }
      
      protected function resetTimer() : void
      {
         if(this.var_202)
         {
            this.var_202.removeEventListener(TimerEvent.TIMER,this.populateItemGrid);
            this.var_202.reset();
         }
         this.var_844 = 0;
      }
      
      protected function loadItemGridGraphics(param1:TimerEvent = null) : void
      {
         var _loc3_:* = null;
         if(param1 != null)
         {
         }
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.var_844 >= 0 && this.var_844 < page.offers.length)
            {
               _loc3_ = page.offers[this.var_844];
               this.loadGraphics(_loc3_);
               _loc3_.productContainer.grid = this;
            }
            ++this.var_844;
            if(this.var_844 >= page.offers.length)
            {
               this.resetTimer();
               break;
            }
            _loc2_++;
         }
      }
      
      private function activateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = true;
      }
      
      private function deActivateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = false;
      }
      
      protected function createGridItem(param1:Offer) : void
      {
         var _loc2_:IWindowContainer = page.viewer.catalog.windowManager.buildFromXML(this.var_1585) as IWindowContainer;
         this.var_473.addGridItem(_loc2_);
         param1.productContainer.view = _loc2_;
         if(param1.pricingModel == Offer.const_551)
         {
            ++this.var_2014;
            (param1.productContainer as BundleProductContainer).setBundleCounter(this.var_2014);
         }
      }
      
      protected function loadGraphics(param1:Offer) : void
      {
         param1.productContainer.initProductIcon(page.viewer.roomEngine);
      }
   }
}
