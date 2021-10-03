package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   
   public class HabboGroupBadgesMessageParser implements IMessageParser
   {
       
      
      protected var var_282:Map;
      
      public function HabboGroupBadgesMessageParser()
      {
         super();
         this.var_282 = new Map();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         this.var_282.dispose();
         this.var_282 = new Map();
         var _loc2_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc3_ = param1.readInteger();
            _loc4_ = param1.readString();
            this.var_282.add(_loc3_,_loc4_);
            _loc5_++;
         }
         return true;
      }
      
      public function get badges() : Map
      {
         var _loc1_:Map = new Map();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_282.length)
         {
            _loc1_.add(this.var_282.getKey(_loc2_),this.var_282.getWithIndex(_loc2_));
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
