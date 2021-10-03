package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2114:Number;
      
      private var var_1955:Number;
      
      private var var_867:Number;
      
      private var var_499:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2114 = param1;
         this.var_1955 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_867 = param1;
         this.var_499 = 0;
      }
      
      public function update() : void
      {
         this.var_867 += this.var_1955;
         this.var_499 += this.var_867;
         if(this.var_499 > 0)
         {
            this.var_499 = 0;
            this.var_867 = this.var_2114 * -1 * this.var_867;
         }
      }
      
      public function get location() : Number
      {
         return this.var_499;
      }
   }
}
