package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_169:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_302:IHabboCommunicationManager;
      
      private var var_949:IHabboLocalizationManager;
      
      private var var_768:IHabboConfigurationManager;
      
      private var _sessionDataManager:ISessionDataManager;
      
      private var var_1170:FaqIndex;
      
      private var var_1345:IncomingMessages;
      
      private var var_67:HelpUI;
      
      private var var_105:TutorialUI;
      
      private var var_769:HotelMergeUI;
      
      private var var_1444:CallForHelpData;
      
      private var var_2471:UserRegistry;
      
      private var var_2452:String = "";
      
      private var var_626:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1444 = new CallForHelpData();
         this.var_2471 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1170 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2452 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2452;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1444;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2471;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_949;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_169;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this._sessionDataManager;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_105;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_769;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_105)
         {
            return this.var_105.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_67 != null)
         {
            this.var_67.dispose();
            this.var_67 = null;
         }
         if(this.var_105 != null)
         {
            this.var_105.dispose();
            this.var_105 = null;
         }
         if(this.var_769)
         {
            this.var_769.dispose();
            this.var_769 = null;
         }
         if(this.var_1170 != null)
         {
            this.var_1170.dispose();
            this.var_1170 = null;
         }
         this.var_1345 = null;
         if(this.var_169)
         {
            this.var_169.release(new IIDHabboToolbar());
            this.var_169 = null;
         }
         if(this.var_949)
         {
            this.var_949.release(new IIDHabboLocalizationManager());
            this.var_949 = null;
         }
         if(this.var_302)
         {
            this.var_302.release(new IIDHabboCommunicationManager());
            this.var_302 = null;
         }
         if(this.var_768)
         {
            this.var_768.release(new IIDHabboConfigurationManager());
            this.var_768 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._sessionDataManager != null)
         {
            this._sessionDataManager.release(new IIDSessionDataManager());
            this._sessionDataManager = null;
         }
         if(this.var_626 != null)
         {
            this.var_626.dispose();
            this.var_626 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_67 != null)
         {
            this.var_67.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_67 != null)
         {
            this.var_67.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_67 != null)
         {
            this.var_67.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_67 != null)
         {
            this.var_67.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_67 != null)
         {
            this.var_67.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1170;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_302 != null && param1 != null)
         {
            this.var_302.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_768 == null)
         {
            return param1;
         }
         return this.var_768.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_67 != null)
         {
            this.var_67.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_67 != null)
         {
            this.var_67.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1444.reportedUserId = param1;
         this.var_1444.reportedUserName = param2;
         this.var_67.showUI(HabboHelpViewEnum.const_366);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_67 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_67.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_67 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_67 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_949,this.var_169);
         }
         return this.var_67 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_105 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_105 = new TutorialUI(this,_loc1_);
         }
         return this.var_105 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_105 != null)
         {
            this.var_105.dispose();
            this.var_105 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_769)
         {
            this.var_769 = new HotelMergeUI(this);
         }
         this.var_769.startNameChange();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_105 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_105.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_105)
         {
            this.var_105.showView(TutorialUI.const_302);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_302 = IHabboCommunicationManager(param2);
         this.var_1345 = new IncomingMessages(this,this.var_302);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_169 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_949 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_768 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_86,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_91,this.onRoomSessionEvent);
         this.var_169.events.addEventListener(HabboToolbarEvent.const_70,this.onHabboToolbarEvent);
         this.var_169.events.addEventListener(HabboToolbarEvent.const_36,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._sessionDataManager = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_86:
               if(this.var_67 != null)
               {
                  this.var_67.setRoomSessionStatus(true);
               }
               if(this.var_105 != null)
               {
                  this.var_105.setRoomSessionStatus(true);
               }
               this.showWelcomeScreen(true);
               break;
            case RoomSessionEvent.const_91:
               if(this.var_67 != null)
               {
                  this.var_67.setRoomSessionStatus(false);
               }
               if(this.var_105 != null)
               {
                  this.var_105.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
               this.showWelcomeScreen(false);
         }
      }
      
      private function showWelcomeScreen(param1:Boolean) : void
      {
         if(!this.var_626)
         {
            this.var_626 = new WelcomeScreenController(this,this._windowManager,this.var_768);
         }
         this.var_626.showWelcomeScreen(param1);
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_169 != null)
         {
            this.var_169.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_130,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_70)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_36)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
      
      public function setWelcomeNotifications(param1:Array) : void
      {
         if(!this.var_626)
         {
            this.showWelcomeScreen(true);
         }
         this.var_626.notifications = param1;
      }
   }
}
