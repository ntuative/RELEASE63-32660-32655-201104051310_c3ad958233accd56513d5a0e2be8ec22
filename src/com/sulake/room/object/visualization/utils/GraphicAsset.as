package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1587:String;
      
      private var var_2149:String;
      
      private var var_461:BitmapDataAsset;
      
      private var var_1389:Boolean;
      
      private var var_1390:Boolean;
      
      private var var_2150:Boolean;
      
      private var _offsetX:int;
      
      private var var_1142:int;
      
      private var var_249:int;
      
      private var _height:int;
      
      private var var_743:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1587 = param1;
         this.var_2149 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_461 = _loc9_;
            this.var_743 = false;
         }
         else
         {
            this.var_461 = null;
            this.var_743 = true;
         }
         this.var_1389 = param4;
         this.var_1390 = param5;
         this._offsetX = param6;
         this.var_1142 = param7;
         this.var_2150 = param8;
      }
      
      public function dispose() : void
      {
         this.var_461 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_743 && this.var_461 != null)
         {
            _loc1_ = this.var_461.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_249 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_743 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1390;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1389;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_249;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1587;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2149;
      }
      
      public function get asset() : IAsset
      {
         return this.var_461;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2150;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1389)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1390)
         {
            return this.var_1142;
         }
         return -(this.height + this.var_1142);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1142;
      }
   }
}
