package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1702:IID;
      
      private var var_724:Boolean;
      
      private var var_1119:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1702 = param1;
         this.var_1119 = new Array();
         this.var_724 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1702;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_724;
      }
      
      public function get receivers() : Array
      {
         return this.var_1119;
      }
      
      public function dispose() : void
      {
         if(!this.var_724)
         {
            this.var_724 = true;
            this.var_1702 = null;
            while(this.var_1119.length > 0)
            {
               this.var_1119.pop();
            }
            this.var_1119 = null;
         }
      }
   }
}
