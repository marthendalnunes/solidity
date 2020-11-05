contract C {
    function lenBytesRead(bytes calldata x) public returns (uint l) {
        assembly { l := x.length }
    }

    function lenStringRead(bytes calldata x) public returns (uint l) {
        assembly { l := x.length }
    }
}
// ====
// compileViaYul: also
// ----
// lenBytesRead(bytes): 0x20, 4, "abcd" -> 4
// lenBytesRead(bytes): 0x20, 0, "abcd" -> 0x00
// lenBytesRead(bytes): 0x20, 0x21, "abcd", "ef" -> 33
// lenStringRead(bytes): 0x20, 4, "abcd" -> 4
// lenStringRead(bytes): 0x20, 0, "abcd" -> 0x00
// lenStringRead(bytes): 0x20, 0x21, "abcd", "ef" -> 33
