pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/comparators.circom";
include "../../node_modules/circomlib-matrix/circuits/matMul.circom"; // hint: you can use more than one templates in circomlib-matrix to help you

template SystemOfEquations(n) { // n is the number of variables in the system of equations
    signal input x[n]; // this is the solution to the system of equations
    signal input A[n][n]; // this is the coefficient matrix
    signal input b[n]; // this are the constants in the system of equations
    signal output out; // 1 for correct solution, 0 for incorrect solution

    // [bonus] insert your code here
    component mul = matMul(n,n,1);
    for (var i = 0; i < n; i++) {
        for (var j = 0; j < n; j++) {
            A[i][j] ==> mul.a[i][j];
        }
        x[i] ==> mul.b[i][0];
    }

    var totalMatches = 0;
    component eql[n];
    for (var i = 0; i < n; i++) {
        eql[i] = IsEqual();
        b[i] ==> eql[i].in[0];
        mul.out[i][0] ==> eql[i].in[1];
        totalMatches += eql[i].out;
    }

    component allMatch = IsEqual();
    totalMatches ==> allMatch.in[0];
    n ==> allMatch.in[1];
    allMatch.out ==> out;
}

component main {public [A, b]} = SystemOfEquations(3);