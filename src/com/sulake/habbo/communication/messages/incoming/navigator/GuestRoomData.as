package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_391:int;
      
      private var var_847:Boolean;
      
      private var var_871:String;
      
      private var _ownerName:String;
      
      private var var_2724:int;
      
      private var var_2757:int;
      
      private var var_2762:int;
      
      private var var_1588:String;
      
      private var var_2761:int;
      
      private var var_2760:Boolean;
      
      private var var_744:int;
      
      private var var_1564:int;
      
      private var var_2759:String;
      
      private var var_859:Array;
      
      private var var_2758:RoomThumbnailData;
      
      private var var_2719:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_859 = new Array();
         super();
         this.var_391 = param1.readInteger();
         this.var_847 = param1.readBoolean();
         this.var_871 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2724 = param1.readInteger();
         this.var_2757 = param1.readInteger();
         this.var_2762 = param1.readInteger();
         this.var_1588 = param1.readString();
         this.var_2761 = param1.readInteger();
         this.var_2760 = param1.readBoolean();
         this.var_744 = param1.readInteger();
         this.var_1564 = param1.readInteger();
         this.var_2759 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_859.push(_loc4_);
            _loc3_++;
         }
         this.var_2758 = new RoomThumbnailData(param1);
         this.var_2719 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_859 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_391;
      }
      
      public function get event() : Boolean
      {
         return this.var_847;
      }
      
      public function get roomName() : String
      {
         return this.var_871;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2724;
      }
      
      public function get userCount() : int
      {
         return this.var_2757;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2762;
      }
      
      public function get description() : String
      {
         return this.var_1588;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2761;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2760;
      }
      
      public function get score() : int
      {
         return this.var_744;
      }
      
      public function get categoryId() : int
      {
         return this.var_1564;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2759;
      }
      
      public function get tags() : Array
      {
         return this.var_859;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2758;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2719;
      }
   }
}
