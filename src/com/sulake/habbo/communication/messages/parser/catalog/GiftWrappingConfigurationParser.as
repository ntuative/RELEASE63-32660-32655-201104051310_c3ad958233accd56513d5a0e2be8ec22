package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2497:Boolean;
      
      private var var_2498:int;
      
      private var var_1758:Array;
      
      private var var_751:Array;
      
      private var var_750:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2497;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2498;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1758;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_751;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_750;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1758 = [];
         this.var_751 = [];
         this.var_750 = [];
         this.var_2497 = param1.readBoolean();
         this.var_2498 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1758.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_751.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_750.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
