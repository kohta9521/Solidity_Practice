// pragma solidity ^0.6.7;

contract Hello {
    string public productname = "Hello World";

    // 関数定義
    function setname(string memory name1) public {
        productname = name1;
    }

    // 関数定義
    function getname() public view returns (string memory) {
        return productname;
    }
}
