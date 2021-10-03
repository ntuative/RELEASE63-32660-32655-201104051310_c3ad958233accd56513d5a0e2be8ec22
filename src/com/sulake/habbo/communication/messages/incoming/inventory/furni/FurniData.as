package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2451:int;
      
      private var var_1416:String;
      
      private var _objId:int;
      
      private var var_1677:int;
      
      private var _category:int;
      
      private var var_2090:String;
      
      private var var_2798:Boolean;
      
      private var var_2797:Boolean;
      
      private var var_2796:Boolean;
      
      private var var_2383:Boolean;
      
      private var var_2795:int;
      
      private var var_1354:int;
      
      private var var_1973:String = "";
      
      private var var_1961:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2451 = param1;
         this.var_1416 = param2;
         this._objId = param3;
         this.var_1677 = param4;
         this._category = param5;
         this.var_2090 = param6;
         this.var_2798 = param7;
         this.var_2797 = param8;
         this.var_2796 = param9;
         this.var_2383 = param10;
         this.var_2795 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1973 = param1;
         this.var_1354 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2451;
      }
      
      public function get itemType() : String
      {
         return this.var_1416;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1677;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2090;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2798;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2797;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2796;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2383;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2795;
      }
      
      public function get slotId() : String
      {
         return this.var_1973;
      }
      
      public function get songId() : int
      {
         return this.var_1961;
      }
      
      public function get extra() : int
      {
         return this.var_1354;
      }
   }
}
