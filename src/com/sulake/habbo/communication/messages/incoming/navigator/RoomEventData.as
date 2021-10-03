package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1110:Boolean;
      
      private var var_2238:int;
      
      private var var_2243:String;
      
      private var var_391:int;
      
      private var var_2240:int;
      
      private var var_2241:String;
      
      private var var_2239:String;
      
      private var var_2242:String;
      
      private var var_859:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_859 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1110 = false;
            return;
         }
         this.var_1110 = true;
         this.var_2238 = int(_loc2_);
         this.var_2243 = param1.readString();
         this.var_391 = int(param1.readString());
         this.var_2240 = param1.readInteger();
         this.var_2241 = param1.readString();
         this.var_2239 = param1.readString();
         this.var_2242 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_859.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2238;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2243;
      }
      
      public function get flatId() : int
      {
         return this.var_391;
      }
      
      public function get eventType() : int
      {
         return this.var_2240;
      }
      
      public function get eventName() : String
      {
         return this.var_2241;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2239;
      }
      
      public function get creationTime() : String
      {
         return this.var_2242;
      }
      
      public function get tags() : Array
      {
         return this.var_859;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1110;
      }
   }
}
