package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import flash.events.IEventDispatcher;
   
   public class CatalogWidget
   {
       
      
      protected var _window:IWindowContainer;
      
      private var _events:IEventDispatcher;
      
      private var var_336:ICatalogPage;
      
      private var var_724:Boolean;
      
      public function CatalogWidget(param1:IWindowContainer)
      {
         super();
         this._window = param1;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_336 = param1;
      }
      
      public function set events(param1:IEventDispatcher) : void
      {
         this._events = param1;
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function get events() : IEventDispatcher
      {
         return this._events;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_336;
      }
      
      public function dispose() : void
      {
         this._events = null;
         this.var_336 = null;
         this._window = null;
         this.var_724 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_724;
      }
      
      public function init() : Boolean
      {
         return true;
      }
      
      public function closed() : void
      {
      }
   }
}
