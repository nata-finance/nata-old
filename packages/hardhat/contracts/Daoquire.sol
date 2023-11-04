//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "hardhat/console.sol";


contract Daoquire {
	
	event ListSafeForSale(address indexed safe, uint256 indexed priceInEth);
	event PurchaseSafe(address indexed safe, address indexed buyer);

	function listForSale(uint256 _priceInEth) external {
		// TODO: Should really be called by a safe only, maybe use this:
		// https://docs.openzeppelin.com/contracts/5.x/api/utils#ERC165Checker
		console.log("Daoquire: listForSale ", msg.sender);
		emit ListSafeForSale(msg.sender, _priceInEth);
	}

	function purchase(address _safe) external payable {
		// TODO: move this function to the new safe contract/module
		// TODO: check if msg.value >= price
		console.log("Daoquire: purchase %s by %s", _safe, msg.sender);
		emit PurchaseSafe(_safe, msg.sender);
	}
	
	receive() external payable {}
}
