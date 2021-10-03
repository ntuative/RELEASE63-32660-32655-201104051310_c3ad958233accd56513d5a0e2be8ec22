package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      protected var var_1961:int;
      
      protected var var_2098:int;
      
      protected var _songName:String;
      
      protected var _songCreator:String;
      
      private var var_2500:Number = 0.0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_1961 = param1;
         this.var_2098 = param2;
         this._songName = param3;
         this._songCreator = param4;
      }
      
      public function get id() : int
      {
         return this.var_1961;
      }
      
      public function get length() : int
      {
         return this.var_2098;
      }
      
      public function get name() : String
      {
         return this._songName;
      }
      
      public function get creator() : String
      {
         return this._songCreator;
      }
      
      public function get startPlayHeadPos() : Number
      {
         return this.var_2500;
      }
      
      public function set startPlayHeadPos(param1:Number) : void
      {
         this.var_2500 = param1;
      }
   }
}
