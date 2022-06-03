pragma solidity ^0.8.7;
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
contract myToken is ERC20{
 address public admin;
 uint amount;
     constructor () ERC20('myToken','LBT'){
   
   
     admin =msg.sender;
}

function mint(uint amount) external{
    require(msg.sender==admin,'Only Admin');
     _mint(msg.sender,amount);
    // _mint(_to,amount);
}
function burn(uint amount) external{
    _burn(msg.sender,amount);
}
 }