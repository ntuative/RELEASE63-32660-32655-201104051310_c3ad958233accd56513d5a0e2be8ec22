package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var var_1557:String;
      
      private var var_193:String;
      
      private var var_2765:String;
      
      private var var_2009:String;
      
      private var _color:IPartColor;
      
      private var _frames:Array;
      
      private var _action:IActionDefinition;
      
      private var var_1534:Boolean;
      
      private var _isBlendable:Boolean;
      
      private var var_2766:ColorTransform;
      
      private var var_2745:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:String, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         this.var_1557 = param1;
         this.var_193 = param2;
         this.var_2009 = param3;
         this._color = param4;
         this._frames = param5;
         this._action = param6;
         this.var_1534 = param7;
         this.var_2745 = param8;
         this.var_2765 = param9;
         this._isBlendable = param10;
         this.var_2766 = new ColorTransform(1,1,1,param11);
         if(this._frames == null)
         {
            Logger.log("Null frame list");
         }
         if(this.var_193 == "ey")
         {
            this.var_1534 = false;
         }
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return this._frames[param1 % this._frames.length];
      }
      
      public function get frames() : Array
      {
         return this._frames;
      }
      
      public function get bodyPartId() : String
      {
         return this.var_1557;
      }
      
      public function get partType() : String
      {
         return this.var_193;
      }
      
      public function get partId() : String
      {
         return this.var_2009;
      }
      
      public function get color() : IPartColor
      {
         return this._color;
      }
      
      public function get action() : IActionDefinition
      {
         return this._action;
      }
      
      public function set isColorable(param1:Boolean) : void
      {
         this.var_1534 = param1;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1534;
      }
      
      public function get paletteMapId() : int
      {
         return this.var_2745;
      }
      
      public function get flippedPartType() : String
      {
         return this.var_2765;
      }
      
      public function get isBlendable() : Boolean
      {
         return this._isBlendable;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return this.var_2766;
      }
   }
}
