package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IBitmapDataContainer;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class BitmapWrapperController extends WindowController implements IBitmapWrapperWindow, IBitmapDataContainer
   {
       
      
      protected var _bitmapData:BitmapData;
      
      protected var var_568:Boolean = true;
      
      protected var var_866:String;
      
      public function BitmapWrapperController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmap(param1:BitmapData) : void
      {
         if(this.var_568 && this._bitmapData && param1 != this._bitmapData)
         {
            this._bitmapData.dispose();
         }
         this._bitmapData = param1;
         _context.invalidate(this,var_11,WindowRedrawFlag.const_57);
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         this.bitmap = param1;
      }
      
      public function get bitmapAssetName() : String
      {
         return this.var_866;
      }
      
      public function set bitmapAssetName(param1:String) : void
      {
         this.var_866 = param1;
      }
      
      public function get disposesBitmap() : Boolean
      {
         return this.var_568;
      }
      
      public function set disposesBitmap(param1:Boolean) : void
      {
         this.var_568 = param1;
      }
      
      override public function clone() : IWindow
      {
         var _loc1_:BitmapWrapperController = super.clone() as BitmapWrapperController;
         _loc1_._bitmapData = this._bitmapData;
         _loc1_.var_568 = this.var_568;
         _loc1_.var_866 = this.var_866;
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         if(this._bitmapData)
         {
            if(this.var_568)
            {
               this._bitmapData.dispose();
            }
            this._bitmapData = null;
         }
         super.dispose();
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         if(this.var_568 != PropertyDefaults.const_1168)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_785,this.var_568,PropertyStruct.const_40,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_1601);
         }
         if(this.var_866 != PropertyDefaults.const_1106)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_826,this.var_866,PropertyStruct.const_55,true));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_1581);
         }
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case PropertyDefaults.const_785:
                  this.var_568 = _loc2_.value as Boolean;
                  break;
               case PropertyDefaults.const_826:
                  this.var_866 = _loc2_.value as String;
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
