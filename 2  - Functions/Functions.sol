pragma solidity 0.4.24;

contract functionsExample{

    function doNothing(){
        // Nothing to see here..
    }

    // A public function..
    function doSomething(uint8 param) public returns(uint256){
        uint256  tempVar= privateSomething(param);
        return tempVar;
    }

    // A private function..
    function privateSomething(uint param) private returns(uint256){
        uint retVar = param + param;
        return retVar;
    }

}