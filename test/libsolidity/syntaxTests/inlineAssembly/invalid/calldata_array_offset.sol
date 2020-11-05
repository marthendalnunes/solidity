contract C {
    function f(uint[] calldata bytesAsCalldata) external {
        assembly {
            let x := bytesAsCalldata.offset
        }
    }
}
// ----
// TypeError 3622: (112-134): The suffix .offset is not supported by this variable or type.
