//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelBooking {
    // ホテルのオーナー
    address payable public owner;

    // 空室か満室かの状態
    enum Statuses {
        Vacant,
        Occpied
    }
    Statuses public currentStatuses;

    constructor() {
        owner = payable(msg.sender); // メッセージの送信者のアカウントアドレス
        currentStatuses = Statuses.Vacant;
    }

    modifier onlyWhiteVacant {
        // 満室かどうかチェックする
        require(currentStatuses == Statuses.Vacant, "alredy ocuppied");
        _;     
    }

    modifier costs(uint _amount) {
        // 金が足りるかどうかのチェック
        require(msg.value >= _amount, "Not enough ether");
        _; 
    }

    // 予約用関数
    function booking() public payable onlyWhiteVacant costs(2 ether) {
        // 満室状態にする
        currentStatuses = Statuses.Occpied;
        // オーナーにお金を送金する
        owner.transfer(msg.value);
    }
}

