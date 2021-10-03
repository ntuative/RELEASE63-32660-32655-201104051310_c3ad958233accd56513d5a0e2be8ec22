package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1634:int;
      
      private var _currentPosition:int;
      
      private var var_1635:int;
      
      private var var_1633:int;
      
      private var var_1636:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1634;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1635;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1633;
      }
      
      public function get syncCount() : int
      {
         return this.var_1636;
      }
      
      public function flush() : Boolean
      {
         this.var_1634 = -1;
         this._currentPosition = -1;
         this.var_1635 = -1;
         this.var_1633 = -1;
         this.var_1636 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1634 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1635 = param1.readInteger();
         this.var_1633 = param1.readInteger();
         this.var_1636 = param1.readInteger();
         return true;
      }
   }
}
