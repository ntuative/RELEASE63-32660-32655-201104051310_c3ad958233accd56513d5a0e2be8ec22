package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import flash.display.BitmapData;
   
   public class FriendEntityTab extends Tab
   {
      
      private static const const_1420:String = "entity_xml";
      
      private static const const_1419:String = "facebook_piece_xml";
      
      private static const const_1421:String = "controls_piece_xml";
      
      private static const const_356:String = "list";
      
      private static const const_903:String = "header";
      
      private static const const_1017:String = "facebook";
      
      private static const const_1016:String = "controls";
      
      private static const const_638:String = "canvas";
      
      private static const const_442:String = "name";
      
      private static const const_948:String = "btn_message";
      
      private static const const_1015:String = "btn_visit";
      
      private static const const_1396:String = "icon";
      
      private static const POOL:Array = [];
      
      private static const const_443:Array = [];
       
      
      private var var_328:IFriendEntity;
      
      public function FriendEntityTab()
      {
         super();
      }
      
      public static function allocate(param1:IFriendEntity) : FriendEntityTab
      {
         var _loc2_:FriendEntityTab = false ? POOL.pop() : new FriendEntityTab();
         _loc2_.var_565 = false;
         _loc2_.friend = param1;
         return _loc2_;
      }
      
      private static function purgeEntityPieces(param1:IWindowContainer) : void
      {
         var _loc3_:* = null;
         var _loc2_:IItemListWindow = IItemListWindow(param1.getChildByName(const_356));
         _loc3_ = _loc2_.getListItemByName(const_1017) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         _loc3_ = _loc2_.getListItemByName(const_1016) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         param1.height = name_1;
         param1.y = 0;
      }
      
      public function set friend(param1:IFriendEntity) : void
      {
         this.var_328 = param1;
         this.refresh();
      }
      
      public function get friend() : IFriendEntity
      {
         return this.var_328;
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_565)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               this.var_328 = null;
               var_565 = true;
               POOL.push(this);
            }
         }
      }
      
      override public function select() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!selected)
         {
            _loc1_ = IItemListWindow(window.getChildByName(const_356));
            if(this.friend.realName != null && this.friend.realName != "")
            {
               _loc2_ = var_1300.buildFromXML(var_855.getAssetByName(const_1419).content as XML) as IWindowContainer;
               _loc2_.name = const_1017;
               _loc2_.getChildByName(const_442).caption = this.friend.realName;
               var_2076.crop(_loc2_.getChildByName(const_442) as ITextWindow);
               _loc3_ = IBitmapWrapperWindow(_loc2_.getChildByName(const_1396));
               _loc3_.bitmap = var_855.getAssetByName(_loc3_.bitmapAssetName).content as BitmapData;
               _loc3_.width = _loc3_.bitmap.width;
               _loc3_.height = _loc3_.bitmap.height;
               _loc1_.addListItem(_loc2_);
            }
            if(this.friend.online)
            {
               _loc2_ = var_1300.buildFromXML(var_855.getAssetByName(const_1421).content as XML) as IWindowContainer;
               _loc2_.name = const_1016;
               _loc4_ = _loc2_.getChildByName(const_948);
               if(_loc4_)
               {
                  _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onControlClick);
               }
               _loc4_ = _loc2_.getChildByName(const_1015);
               if(_loc4_)
               {
                  if(this.friend.allowFollow)
                  {
                     _loc4_.visible = true;
                     _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onControlClick);
                  }
                  else
                  {
                     _loc4_.visible = false;
                  }
               }
               _loc1_.addListItem(_loc2_);
            }
            window.height = _loc1_.height;
            window.y = name_1 - 0;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            if(_window)
            {
               purgeEntityPieces(_window);
            }
            super.deselect();
         }
      }
      
      protected function refresh() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_window)
         {
            _window = this.allocateEntityWindow();
         }
         if(this.var_328)
         {
            _window.id = this.var_328.id;
            _loc1_ = IItemListWindow(_window.getChildByName(const_356)).getListItemByName(const_903) as IWindowContainer;
            _loc1_.findChildByName(const_442).caption = this.var_328.name;
            var_2076.crop(_loc1_.getChildByName(const_442) as ITextWindow);
            _loc2_ = IBitmapWrapperWindow(_loc1_.findChildByName(const_638));
            _loc2_.bitmap = var_1054.getAvatarFaceBitmap(this.var_328.figure);
            _loc2_.width = _loc2_.bitmap.width;
            _loc2_.height = _loc2_.bitmap.height;
         }
      }
      
      private function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_443.pop() : var_1300.buildFromXML(var_855.getAssetByName(const_1420).content as XML) as IWindowContainer;
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(_loc1_.findChildByName(const_638));
         _loc1_.x = 0;
         _loc1_.y = 0;
         _loc1_.width = name_5;
         _loc1_.height = name_1;
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
         _loc2_.disposesBitmap = true;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            param1.width = name_5;
            param1.height = name_1;
            _loc2_ = IBitmapWrapperWindow(param1.findChildByName(const_638));
            _loc2_.bitmap = null;
            purgeEntityPieces(param1);
            if(const_443.indexOf(param1) == -1)
            {
               const_443.push(param1);
            }
         }
      }
      
      private function onControlClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            switch(param1.window.name)
            {
               case const_948:
                  if(var_1053 && this.var_328)
                  {
                     var_1053.startConversation(this.var_328.id);
                  }
                  break;
               case const_1015:
                  if(var_1053 && this.var_328)
                  {
                     var_1053.followToRoom(this.var_328.id);
                  }
            }
         }
      }
      
      private function onMouseClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            if(selected)
            {
               var_1054.deSelect();
            }
            else
            {
               var_1054.selectFriendEntity(this.var_328.id);
            }
         }
      }
   }
}
