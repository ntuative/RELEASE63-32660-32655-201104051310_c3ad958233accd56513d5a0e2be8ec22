package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1055:String;
      
      protected var var_180:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_863:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_863 = param1;
         this.var_1055 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1055;
      }
      
      public function get content() : Object
      {
         return this.var_180;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_863;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_180.loaderInfo != null)
            {
               if(this.var_180.loaderInfo.loader != null)
               {
                  this.var_180.loaderInfo.loader.unload();
               }
            }
            this.var_180 = null;
            this.var_863 = null;
            this._disposed = true;
            this.var_1055 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_180 = param1 as DisplayObject;
            if(this.var_180 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_180 = DisplayAsset(param1).var_180;
            this.var_863 = DisplayAsset(param1).var_863;
            if(this.var_180 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_180 = DisplayAsset(param1).var_180;
            this.var_863 = DisplayAsset(param1).var_863;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
