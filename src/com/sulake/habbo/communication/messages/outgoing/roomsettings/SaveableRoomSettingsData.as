package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1588:String;
      
      private var var_2724:int;
      
      private var _password:String;
      
      private var var_1564:int;
      
      private var var_2722:int;
      
      private var var_859:Array;
      
      private var var_2721:Array;
      
      private var var_2719:Boolean;
      
      private var var_2723:Boolean;
      
      private var var_2720:Boolean;
      
      private var var_2725:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2719;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2719 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2723;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2723 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2720;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2720 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2725;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2725 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1588;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1588 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2724;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2724 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1564;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1564 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2722;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2722 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_859;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_859 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2721;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2721 = param1;
      }
   }
}
