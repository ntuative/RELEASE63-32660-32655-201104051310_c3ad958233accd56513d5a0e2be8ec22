package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_953:BigInteger;
      
      private var var_2320:BigInteger;
      
      private var var_1692:BigInteger;
      
      private var var_2321:BigInteger;
      
      private var var_1372:BigInteger;
      
      private var var_1691:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1372 = param1;
         this.var_1691 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1372.toString() + ",generator: " + this.var_1691.toString() + ",secret: " + param1);
         this.var_953 = new BigInteger();
         this.var_953.fromRadix(param1,param2);
         this.var_2320 = this.var_1691.modPow(this.var_953,this.var_1372);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1692 = new BigInteger();
         this.var_1692.fromRadix(param1,param2);
         this.var_2321 = this.var_1692.modPow(this.var_953,this.var_1372);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2320.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2321.toRadix(param1);
      }
   }
}
