package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_922:PetData;
      
      private var var_2517:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_922 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_922 = new PetData(param1);
         this.var_2517 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return this.var_922;
      }
      
      public function get purchased() : Boolean
      {
         return this.var_2517;
      }
   }
}
