package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_891:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2564:int;
      
      private var var_2563:int;
      
      private var _color:uint;
      
      private var var_1134:int;
      
      private var var_2565:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_891);
         this.var_2564 = param1;
         this.var_2563 = param2;
         this._color = param3;
         this.var_1134 = param4;
         this.var_2565 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2564;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2563;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1134;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2565;
      }
   }
}
