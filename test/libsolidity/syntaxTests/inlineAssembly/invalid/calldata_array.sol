contract C {
    function f(uint[] calldata bytesAsCalldata) external {
        assembly {
            let x := bytesAsCalldata
        }
    }
}
// ----
// TypeError 2370: (112-127): Call data elements cannot be accessed directly. Copy to a local variable first or use "calldataload" or "calldatacopy" with manually determined offsets and sizes.
