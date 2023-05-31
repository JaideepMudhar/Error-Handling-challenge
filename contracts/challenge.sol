// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract challenge{

    address public owner;

    constructor(){
        owner=msg.sender;
    }

    function require_impl(uint num)public view returns(uint) {
        require(msg.sender==owner,"only owner can execute this function");
        require(num>10, "number should be greater than 10");
        return(num=num+5);
    }

    function revert_impl(uint a)public pure returns(uint) {

       a=a+3;
        if(a>=10){
         revert("number should be less than 10");     
           }
       return(a); 
    }

    function assert_impl(uint b)public view returns(uint){
        assert(b==10);
        return(b+10);
    }
}