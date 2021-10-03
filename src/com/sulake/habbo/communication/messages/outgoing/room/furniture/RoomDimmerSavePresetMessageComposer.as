package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2564:int;
      
      private var var_2563:int;
      
      private var var_2740:String;
      
      private var var_2742:int;
      
      private var var_2741:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2564 = param1;
         this.var_2563 = param2;
         this.var_2740 = param3;
         this.var_2742 = param4;
         this.var_2741 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2564,this.var_2563,this.var_2740,this.var_2742,int(this.var_2741)];
      }
      
      public function dispose() : void
      {
      }
   }
}
