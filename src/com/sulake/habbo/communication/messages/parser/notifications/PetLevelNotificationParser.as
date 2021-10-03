package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1639:int;
      
      private var var_2692:String;
      
      private var var_1447:int;
      
      private var var_1115:int;
      
      private var var_1646:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1639 = param1.readInteger();
         this.var_2692 = param1.readString();
         this.var_1447 = param1.readInteger();
         this.var_1115 = param1.readInteger();
         this.var_1646 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1639;
      }
      
      public function get petName() : String
      {
         return this.var_2692;
      }
      
      public function get level() : int
      {
         return this.var_1447;
      }
      
      public function get petType() : int
      {
         return this.var_1115;
      }
      
      public function get breed() : int
      {
         return this.var_1646;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
