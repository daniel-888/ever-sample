pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;
pragma AbiHeader pubkey;

import "@broxus/contracts/contracts/libraries/MsgFlag.sol";


contract Sample {
    uint16 static _nonce;

    constructor() public {
        tvm.accept();
    }

    function touch() public view {
        tvm.rawReserve(1 ever, 2);
        msg.sender.transfer({
            value: 0,
            flag: MsgFlag.ALL_NOT_RESERVED
        });
    }
}
