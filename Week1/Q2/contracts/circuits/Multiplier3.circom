pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals
template Multiplier2 () {  
   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

template Multiplier3 () {  
   signal input a;  
   signal input b;
   signal input c;
   signal output d;
   component mult1 = Multiplier2();
   component mult2 = Multiplier2();

   a ==> mult1.a;
   b ==> mult1.b;
   mult1.c ==> mult2.a;
   c ==> mult2.b;
   mult2.c ==> d;
}

component main = Multiplier3();