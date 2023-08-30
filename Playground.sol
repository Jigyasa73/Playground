pragma solidity 0.8.18;

contract PlayGround {
    string public name = "gameCoin";
    string public symbol = "symbol";
    uint8 public decimals = 2;
    uint256 public maxSupply = 10000;
    uint256 public constant gameCost = 500;

    uint public totalSupply;
    mapping(address => uint256) public balances;
    mapping(address => bool) public canPlay;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor() {
        totalSupply = maxSupply;
        balances[msg.sender] = totalSupply;
        canPlay[msg.sender] = true;
    }

    function transfer(address to, uint256 value) external returns (bool) {
        require(to != address(0), "Invalid recipient address");
        require(value > 0, "Value must be greater than 0");
        require(balances[msg.sender] >= value, "Insufficient balance");

        balances[msg.sender] -= value;
        balances[to] += value;

        emit Transfer(msg.sender, to, value);
        return true;
    }

    function mint(address to, uint256 value) external {
        require(value > 0, "Value must be greater than 0");
        require(totalSupply + value <= maxSupply, "Exceeds maximum supply");

        totalSupply += value;
        balances[to] += value;

        emit Mint(to, value);
        emit Transfer(address(0), to, value);
    }

    function burn(uint256 value) external {
        require(value > 0, "Value must be greater than 0");
        require(balances[msg.sender] >= value, "Insufficient balance for burning");

        totalSupply -= value;
        balances[msg.sender] -= value;

        emit Burn(msg.sender, value);
        emit Transfer(msg.sender, address(0), value);
    }

    function playGame() external {
        require(canPlay[msg.sender], "You can't play games");
        require(balances[msg.sender] >= gameCost, "Insufficient balance to play");

        balances[msg.sender] -= gameCost;

        emit Transfer(msg.sender, address(0), gameCost);
    }

}


