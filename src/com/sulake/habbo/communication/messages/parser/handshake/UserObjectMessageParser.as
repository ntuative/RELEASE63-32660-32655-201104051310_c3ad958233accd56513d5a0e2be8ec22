package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_657:String;
      
      private var var_1006:String;
      
      private var var_2545:String;
      
      private var var_1688:String;
      
      private var var_2546:int;
      
      private var var_2547:String;
      
      private var var_2544:int;
      
      private var var_2543:int;
      
      private var var_2417:int;
      
      private var _respectLeft:int;
      
      private var var_804:int;
      
      private var var_2548:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_657 = param1.readString();
         this.var_1006 = param1.readString();
         this.var_2545 = param1.readString();
         this.var_1688 = param1.readString();
         this.var_2546 = param1.readInteger();
         this.var_2547 = param1.readString();
         this.var_2544 = param1.readInteger();
         this.var_2543 = param1.readInteger();
         this.var_2417 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_804 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_657;
      }
      
      public function get sex() : String
      {
         return this.var_1006;
      }
      
      public function get customData() : String
      {
         return this.var_2545;
      }
      
      public function get realName() : String
      {
         return this.var_1688;
      }
      
      public function get tickets() : int
      {
         return this.var_2546;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2547;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2544;
      }
      
      public function get directMail() : int
      {
         return this.var_2543;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2417;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_804;
      }
      
      public function get identityId() : int
      {
         return this.var_2548;
      }
   }
}
