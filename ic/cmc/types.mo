// Do NOT edit this file. It was automatically generated by https://github.com/aviate-labs/agent-go.
module T {
    public type Cycles = Nat;
    public type BlockIndex = Nat64;
    public type NotifyTopUpArg = { block_index : T.BlockIndex; canister_id : Principal };
    public type NotifyCreateCanisterArg = { block_index : T.BlockIndex; controller : Principal; subnet_type : ?Text };
    public type NotifyError = { #Refunded : { reason : Text; block_index : ?T.BlockIndex }; #Processing; #TransactionTooOld : T.BlockIndex; #InvalidTransaction : Text; #Other : { error_code : Nat64; error_message : Text } };
    public type NotifyTopUpResult = { #Ok : T.Cycles; #Err : T.NotifyError };
    public type NotifyCreateCanisterResult = { #Ok : Principal; #Err : T.NotifyError };
    public type IcpXdrConversionRate = { timestamp_seconds : Nat64; xdr_permyriad_per_icp : Nat64 };
    public type IcpXdrConversionRateResponse = { data : T.IcpXdrConversionRate; hash_tree : Blob; certificate : Blob };
    public type SubnetTypesToSubnetsResponse = { data : [(Text, [Principal])] };
    public type AccountIdentifier = { bytes : Blob };
    public type ExchangeRateCanister = { #Set : Principal; #Unset };
    public type CyclesCanisterInitPayload = { ledger_canister_id : ?Principal; governance_canister_id : ?Principal; minting_account_id : ?T.AccountIdentifier; last_purged_notification : ?Nat64; exchange_rate_canister : ?T.ExchangeRateCanister };
};
