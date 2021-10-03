package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_714:TileHeightMap = null;
      
      private var var_1079:LegacyWallGeometry = null;
      
      private var var_1078:RoomCamera = null;
      
      private var var_715:SelectedRoomObjectData = null;
      
      private var var_716:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_483:Map;
      
      private var var_484:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_483 = new Map();
         this.var_484 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1079 = new LegacyWallGeometry();
         this.var_1078 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_714;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_714 != null)
         {
            this.var_714.dispose();
         }
         this.var_714 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1079;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1078;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_715;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_715 != null)
         {
            this.var_715.dispose();
         }
         this.var_715 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_716;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_716 != null)
         {
            this.var_716.dispose();
         }
         this.var_716 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_714 != null)
         {
            this.var_714.dispose();
            this.var_714 = null;
         }
         if(this.var_1079 != null)
         {
            this.var_1079.dispose();
            this.var_1079 = null;
         }
         if(this.var_1078 != null)
         {
            this.var_1078.dispose();
            this.var_1078 = null;
         }
         if(this.var_715 != null)
         {
            this.var_715.dispose();
            this.var_715 = null;
         }
         if(this.var_716 != null)
         {
            this.var_716.dispose();
            this.var_716 = null;
         }
         if(this.var_483 != null)
         {
            this.var_483.dispose();
            this.var_483 = null;
         }
         if(this.var_484 != null)
         {
            this.var_484.dispose();
            this.var_484 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_483.remove(param1.id);
            this.var_483.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_483.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_483.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_483.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_484.remove(param1.id);
            this.var_484.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_484.length > 0)
         {
            return this.getWallItemDataWithId(this.var_484.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_484.remove(param1);
      }
   }
}
