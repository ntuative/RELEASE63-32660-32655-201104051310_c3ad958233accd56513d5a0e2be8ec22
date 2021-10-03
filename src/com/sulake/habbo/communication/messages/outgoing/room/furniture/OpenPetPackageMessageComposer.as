package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_382:int;
      
      private var var_2692:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_382 = param1;
         this.var_2692 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_382,this.var_2692];
      }
      
      public function dispose() : void
      {
      }
   }
}
