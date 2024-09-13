pragma circom 2.0.0;

/*CIRCUIT GATES WITH ZVKM*/  

template Multiplier2 () {  

   //signal creation
      signal input a;
      signal input b;

  //intermediate signal creation
      signal x;
      signal y;

// output signal creation
      signal output q;

// Circuit Gate Used
      component andGate = AND();
      component notGate = NOT();
      component orGate = OR();

//giving inputs to the gates
      andGate.a <== a;
      andGate.b <== b;
      notGate.in <== b;

//Assigning Values to intermediate signal
      x <== andGate.out;
      y <== notGate.out;

//giving inputs to OR gate 
      orGate.a <== x;
      orGate.b <== y;

//Assigning output to orgate
      q <== orGate.out; 

}
//Templates Of GATES

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

component main = Multiplier2();
