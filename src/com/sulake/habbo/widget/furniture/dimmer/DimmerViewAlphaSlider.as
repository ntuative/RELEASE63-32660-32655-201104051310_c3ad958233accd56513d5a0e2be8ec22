package com.sulake.habbo.widget.furniture.dimmer
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class DimmerViewAlphaSlider
   {
       
      
      private var _view:DimmerView;
      
      private var _sliderContainer:IWindowContainer;
      
      private var var_712:BitmapData;
      
      private var var_711:BitmapData;
      
      private var var_1629:int;
      
      private var var_2935:int;
      
      private var _minValue:int = 0;
      
      private var var_1280:int = 255;
      
      public function DimmerViewAlphaSlider(param1:DimmerView, param2:IWindowContainer, param3:IAssetLibrary, param4:int = 0, param5:int = 255)
      {
         super();
         this._view = param1;
         this._sliderContainer = param2;
         this._minValue = param4;
         this.var_1280 = param5;
         this.storeAssets(param3);
         this.displaySlider();
      }
      
      public function dispose() : void
      {
         this._view = null;
         this._sliderContainer = null;
         this.var_712 = null;
         this.var_711 = null;
      }
      
      public function setValue(param1:int) : void
      {
         if(this._sliderContainer == null)
         {
            return;
         }
         var _loc2_:IWindow = this._sliderContainer.findChildByName("slider_button");
         if(_loc2_ != null)
         {
            _loc2_.x = this.getSliderPosition(param1);
         }
      }
      
      public function set min(param1:Number) : void
      {
         this._minValue = param1;
         this.setValue(this._view.selectedBrightness);
      }
      
      public function set max(param1:Number) : void
      {
         this.var_1280 = param1;
         this.setValue(this._view.selectedBrightness);
      }
      
      private function getSliderPosition(param1:int) : int
      {
         return int(this.var_1629 * (Number(param1 - this._minValue) / (this.var_1280 - this._minValue)));
      }
      
      private function getValue(param1:Number) : int
      {
         return int(param1 / this.var_1629 * (this.var_1280 - this._minValue)) + this._minValue;
      }
      
      private function buttonProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.const_58 && param1.type != WindowMouseEvent.const_178)
         {
            return;
         }
         this._view.selectedBrightness = this.getValue(param2.x);
      }
      
      private function displaySlider() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._sliderContainer == null)
         {
            return;
         }
         _loc2_ = this._sliderContainer.findChildByName("slider_base") as IBitmapWrapperWindow;
         if(_loc2_ != null && this.var_712 != null)
         {
            _loc2_.bitmap = new BitmapData(this.var_712.width,this.var_712.height,true,16777215);
            _loc2_.bitmap.copyPixels(this.var_712,this.var_712.rect,new Point(0,0),null,null,true);
         }
         _loc1_ = this._sliderContainer.findChildByName("slider_movement_area") as IWindowContainer;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.findChildByName("slider_button") as IBitmapWrapperWindow;
            if(_loc2_ != null && this.var_711 != null)
            {
               _loc2_.bitmap = new BitmapData(this.var_711.width,this.var_711.height,true,16777215);
               _loc2_.bitmap.copyPixels(this.var_711,this.var_711.rect,new Point(0,0),null,null,true);
               _loc2_.procedure = this.buttonProcedure;
               this.var_1629 = _loc1_.width - _loc2_.width;
            }
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = BitmapDataAsset(param1.getAssetByName("dimmer_slider_base"));
         this.var_712 = BitmapData(_loc2_.content);
         _loc2_ = BitmapDataAsset(param1.getAssetByName("dimmer_slider_button"));
         this.var_711 = BitmapData(_loc2_.content);
      }
   }
}
