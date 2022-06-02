pragma solidity >= 0.5.0 < 0.9.0;
contract SendEth
{
    address owner ;
    uint public amount = 1 ether;
    address payable [] public Clients;      
     constructor()
     {
        owner= msg.sender;
    }
        receive() external payable
         {
            require(msg.value==1 ether);
            Clients.push(payable(msg.sender));
         }
           function CheckBalance() public view returns(uint)
        {

        require(msg.sender==owner);
        return address(this).balance;
        }
    function SendEther( address payable pay) public payable
    {
        require(msg.sender==owner);
        // require(msg.value==1 ether);
        //  pay.transfer(msg.value);
        // require(amount<= 10 ether);
        pay.transfer(amount);

    }

        

}