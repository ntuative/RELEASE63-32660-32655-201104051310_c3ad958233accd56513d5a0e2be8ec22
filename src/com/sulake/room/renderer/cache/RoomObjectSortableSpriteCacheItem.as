package com.sulake.room.renderer.cache
{
   import com.sulake.room.renderer.utils.SortableSprite;
   
   public class RoomObjectSortableSpriteCacheItem
   {
       
      
      private var var_197:Array;
      
      private var var_2711:int = -1;
      
      private var var_2712:int = -1;
      
      private var var_1964:Boolean = false;
      
      public function RoomObjectSortableSpriteCacheItem()
      {
         this.var_197 = [];
         super();
      }
      
      public function get spriteCount() : int
      {
         return this.var_197.length;
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_1964;
      }
      
      public function dispose() : void
      {
         this.setSpriteCount(0);
      }
      
      public function addSprite(param1:SortableSprite) : void
      {
         this.var_197.push(param1);
      }
      
      public function getSprite(param1:int) : SortableSprite
      {
         return this.var_197[param1];
      }
      
      public function needsUpdate(param1:int, param2:int) : Boolean
      {
         if(param1 != this.var_2711 || param2 != this.var_2712)
         {
            this.var_2711 = param1;
            this.var_2712 = param2;
            return true;
         }
         return false;
      }
      
      public function setSpriteCount(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1 < this.var_197.length)
         {
            _loc2_ = param1;
            while(_loc2_ < this.var_197.length)
            {
               _loc3_ = this.getSprite(_loc2_);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            this.var_197.splice(param1,this.var_197.length - param1);
         }
         if(this.var_197.length == 0)
         {
            this.var_1964 = true;
         }
         else
         {
            this.var_1964 = false;
         }
      }
   }
}
