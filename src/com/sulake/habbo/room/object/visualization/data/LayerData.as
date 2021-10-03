package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_765:String = "";
      
      public static const const_402:int = 0;
      
      public static const const_472:int = 255;
      
      public static const const_858:Boolean = false;
      
      public static const const_575:int = 0;
      
      public static const const_458:int = 0;
      
      public static const const_423:int = 0;
      
      public static const const_1091:int = 1;
      
      public static const const_1181:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2166:String = "";
      
      private var var_1945:int = 0;
      
      private var var_2165:int = 255;
      
      private var var_2167:Boolean = false;
      
      private var var_2164:int = 0;
      
      private var var_2163:int = 0;
      
      private var var_2162:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2166 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2166;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1945 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1945;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2165 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2165;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2167 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2167;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2164 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2164;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2163 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2163;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2162 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2162;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
