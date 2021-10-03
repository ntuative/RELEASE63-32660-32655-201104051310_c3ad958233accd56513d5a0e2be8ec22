package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1800:int = 0;
      
      public static const const_1552:int = 1;
      
      public static const const_1471:int = 2;
      
      public static const const_1895:int = 3;
      
      public static const const_1982:int = 4;
      
      public static const const_1801:int = 5;
      
      public static const const_1486:int = 10;
      
      public static const const_1961:int = 11;
      
      public static const const_1803:int = 12;
      
      public static const const_1795:int = 13;
      
      public static const const_1879:int = 16;
      
      public static const const_1934:int = 17;
      
      public static const const_1901:int = 18;
      
      public static const const_1868:int = 19;
      
      public static const const_1830:int = 20;
      
      public static const const_1793:int = 22;
      
      public static const const_1940:int = 23;
      
      public static const const_1780:int = 24;
      
      public static const const_1810:int = 25;
      
      public static const const_1930:int = 26;
      
      public static const const_1829:int = 27;
      
      public static const const_1792:int = 28;
      
      public static const const_1802:int = 29;
      
      public static const const_1900:int = 100;
      
      public static const const_1814:int = 101;
      
      public static const const_1847:int = 102;
      
      public static const const_1958:int = 103;
      
      public static const const_1863:int = 104;
      
      public static const const_1786:int = 105;
      
      public static const const_1848:int = 106;
      
      public static const const_1788:int = 107;
      
      public static const const_1953:int = 108;
      
      public static const const_1890:int = 109;
      
      public static const const_1794:int = 110;
      
      public static const const_1937:int = 111;
      
      public static const const_1921:int = 112;
      
      public static const const_1840:int = 113;
      
      public static const const_1973:int = 114;
      
      public static const const_1971:int = 115;
      
      public static const const_1967:int = 116;
      
      public static const const_1778:int = 117;
      
      public static const const_1831:int = 118;
      
      public static const const_1862:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1552:
            case const_1486:
               return "banned";
            case const_1471:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
