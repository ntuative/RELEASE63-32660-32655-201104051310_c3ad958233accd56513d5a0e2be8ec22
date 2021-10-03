package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1996:String = "";
      
      private var var_1845:String = "";
      
      private var var_2172:String = "";
      
      private var var_2174:Number = 0;
      
      private var var_2175:Number = 0;
      
      private var var_2173:Number = 0;
      
      private var var_2179:Number = 0;
      
      private var var_2178:Boolean = false;
      
      private var var_2171:Boolean = false;
      
      private var var_2176:Boolean = false;
      
      private var var_2177:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1996 = param2;
         this.var_1845 = param3;
         this.var_2172 = param4;
         this.var_2174 = param5;
         this.var_2175 = param6;
         this.var_2173 = param7;
         this.var_2179 = param8;
         this.var_2178 = param9;
         this.var_2171 = param10;
         this.var_2176 = param11;
         this.var_2177 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1996;
      }
      
      public function get canvasId() : String
      {
         return this.var_1845;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2172;
      }
      
      public function get screenX() : Number
      {
         return this.var_2174;
      }
      
      public function get screenY() : Number
      {
         return this.var_2175;
      }
      
      public function get localX() : Number
      {
         return this.var_2173;
      }
      
      public function get localY() : Number
      {
         return this.var_2179;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2178;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2171;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2176;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2177;
      }
   }
}
