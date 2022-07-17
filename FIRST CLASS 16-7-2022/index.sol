// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.15;

contract Class1 {
    address owner;
    uint8 a;
    uint8 b;
    uint8 c;

 constructor(){

	        owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        a = 1;
        b=2;
        
 }


	modifier onlyOwner(){
    require(msg.sender == owner,"Error");
    _;
}


function getA() public view returns(uint8) {
return(a);
}

function getB() public view returns(uint8) {
return(b);
}

function setAandB(uint8 _a,uint8 _b) public onlyOwner  {

a=_a;
b=_b;

}


function add(uint8 _a,uint8 _b) public returns(uint8) {

a=_a;
b=_b;

c= a + b;

return(c);

}


function Substract(uint8 _a,uint8 _b) public returns(uint8) {

a=_a;
b=_b;

c= a - b;

return(c);

}

function Multiply (uint8 _a,uint8 _b) public returns(uint8) {

a=_a;
b=_b;

c= a*b;

return(c);

}

function Divide (uint8 _a,uint8 _b) public returns(uint8) {

a=_a;
b=_b;

c= a/b;

return(c);

}

}