const fs = require("fs");
const solidityRegex = /pragma solidity \^\d+\.\d+\.\d+/

let verifierRegex = /contract Verifier/

let content = fs.readFileSync("./contracts/HelloWorldVerifier.sol", { encoding: 'utf-8' });
let bumped = content.replace(solidityRegex, 'pragma solidity ^0.8.0');
bumped = bumped.replace(verifierRegex, 'contract HelloWorldVerifier');

fs.writeFileSync("./contracts/HelloWorldVerifier.sol", bumped);

// [assignment] add your own scripts below to modify the other verifier contracts you will build during the assignment

content = fs.readFileSync("./contracts/Multiplier3_groth16Verifier.sol", { encoding: 'utf-8' });
bumped = content.replace(solidityRegex, 'pragma solidity ^0.8.0');
bumped = bumped.replace(verifierRegex, 'contract Multiplier3_groth16Verifier');

fs.writeFileSync("./contracts/Multiplier3_groth16Verifier.sol", bumped);

verifierRegex = /contract PlonkVerifier/
content = fs.readFileSync("./contracts/Multiplier3_plonkVerifier.sol", { encoding: 'utf-8' });
bumped = content.replace(verifierRegex, 'contract Multiplier3_plonkVerifier');

fs.writeFileSync("./contracts/Multiplier3_plonkVerifier.sol", bumped);