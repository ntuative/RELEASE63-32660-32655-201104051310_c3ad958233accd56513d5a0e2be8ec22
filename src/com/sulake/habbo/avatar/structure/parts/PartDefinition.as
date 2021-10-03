package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2450:String;
      
      private var var_1796:String;
      
      private var var_2449:String;
      
      private var var_1795:Boolean;
      
      private var var_1797:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2450 = String(param1["set-type"]);
         this.var_1796 = String(param1["flipped-set-type"]);
         this.var_2449 = String(param1["remove-set-type"]);
         this.var_1795 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1797 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1797;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1797 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2450;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1796;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2449;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1795;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1795 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1796 = param1;
      }
   }
}
