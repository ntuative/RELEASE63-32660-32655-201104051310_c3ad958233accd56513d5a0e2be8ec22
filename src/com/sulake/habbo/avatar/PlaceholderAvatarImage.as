package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_827:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_724)
         {
            _structure = null;
            _assets = null;
            var_279 = null;
            var_287 = null;
            var_657 = null;
            var_567 = null;
            var_332 = null;
            if(!var_1317 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_805 = null;
            var_724 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_827[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_827[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_390:
               switch(_loc3_)
               {
                  case AvatarAction.const_787:
                  case AvatarAction.const_481:
                  case AvatarAction.const_400:
                  case AvatarAction.const_702:
                  case AvatarAction.const_359:
                  case AvatarAction.const_827:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_333:
            case AvatarAction.const_870:
            case AvatarAction.const_276:
            case AvatarAction.const_927:
            case AvatarAction.const_683:
            case AvatarAction.const_685:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
