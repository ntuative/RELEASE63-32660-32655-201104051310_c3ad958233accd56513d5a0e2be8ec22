package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_924:IAssetLoader;
      
      private var var_1587:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1587 = param1;
         this.var_924 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1587;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_924;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_924 != null)
            {
               if(!this.var_924.disposed)
               {
                  this.var_924.dispose();
                  this.var_924 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
