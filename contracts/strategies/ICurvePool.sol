// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.8.0;

interface ICurvePool {
    function get_virtual_price() external view returns (uint256);

    function add_liquidity(uint256[3] calldata _amounts, uint256 _min) external;
    function add_liquidity(uint256[3] calldata _amounts, uint256 _min, bool _use_underlying) external;

    function exchange_underlying(uint256 _i, uint256 _j, uint256 _dx, uint256 _min_dy) external;
    function get_dy_underlying(uint256 _i, uint256 _j, uint256 _dx) external view returns (uint256);
    
    function underlying_coins(uint256 arg0) external view returns (address);


    function balances(uint256) external view returns (uint256);

    function calc_token_amount(uint256[3] calldata _amounts, bool _deposit)
        external
        returns (uint256);

    function remove_liquidity_one_coin(
        uint256 _amount,
        int128 _index,
        uint256 _minAmount
    ) external;
    function remove_liquidity_one_coin(
        uint256 _amount,
        int128 _index,
        uint256 _minAmount,
        bool _use_underlying

    ) external;

    function remove_liquidity(
        uint256 _amount,
        uint256[3] calldata _minWithdrawAmounts
    ) external;

    function remove_liquidity(
        uint256 _amount,
        uint256[3] calldata _minWithdrawAmounts,
        bool _use_underlying
    ) external;

    function calc_withdraw_one_coin(uint256 _amount, int128 _index)
        external
        view
        returns (uint256);

    function coins(uint256 _index) external view returns (address);

    function remove_liquidity_imbalance(
        uint256[3] calldata _amounts,
        uint256 maxBurnAmount
    ) external;
}
