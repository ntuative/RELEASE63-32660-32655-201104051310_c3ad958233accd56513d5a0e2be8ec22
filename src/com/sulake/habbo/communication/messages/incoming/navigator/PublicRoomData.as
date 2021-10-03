package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2275:String;
      
      private var var_2276:int;
      
      private var var_2246:int;
      
      private var var_2278:String;
      
      private var var_2277:int;
      
      private var var_2021:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2275 = param1.readString();
         this.var_2276 = param1.readInteger();
         this.var_2246 = param1.readInteger();
         this.var_2278 = param1.readString();
         this.var_2277 = param1.readInteger();
         this.var_2021 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2275;
      }
      
      public function get unitPort() : int
      {
         return this.var_2276;
      }
      
      public function get worldId() : int
      {
         return this.var_2246;
      }
      
      public function get castLibs() : String
      {
         return this.var_2278;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2277;
      }
      
      public function get nodeId() : int
      {
         return this.var_2021;
      }
   }
}
