package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1504:IID;
      
      private var var_1918:String;
      
      private var var_104:IUnknown;
      
      private var var_814:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1504 = param1;
         this.var_1918 = getQualifiedClassName(this.var_1504);
         this.var_104 = param2;
         this.var_814 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1504;
      }
      
      public function get iis() : String
      {
         return this.var_1918;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_104;
      }
      
      public function get references() : uint
      {
         return this.var_814;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_104 == null;
      }
      
      public function dispose() : void
      {
         this.var_1504 = null;
         this.var_1918 = null;
         this.var_104 = null;
         this.var_814 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_814;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_814) : uint(0);
      }
   }
}
