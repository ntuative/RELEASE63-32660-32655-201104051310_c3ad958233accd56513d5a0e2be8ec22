package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var _type:int;
      
      private var var_1724:int;
      
      private var var_2851:int;
      
      private var var_2850:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get duration() : int
      {
         return this.var_1724;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1724 = param1;
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return this.var_2851;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         this.var_2851 = param1;
      }
      
      public function get method_1() : int
      {
         return this.var_2850;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_2850 = param1;
      }
   }
}
