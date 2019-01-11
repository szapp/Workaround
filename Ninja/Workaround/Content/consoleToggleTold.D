/*
 * Toggle the "told" state of dialogs from the console
 * Written by mud-freak, 2018
 */


/*
 * Initialization function
 */
func void CC_ToggleToldInit() {
    CC_Register(CC_ToggleTold, "dia toggle ", "Toggle told status of C_Info dialogs");
};


/*
 * Function to toggle told status of infos
 */
func string CC_ToggleTold(var string infoName) {
    // Find instance symbol by instance name
    var int symbID; symbID = MEM_GetSymbolIndex(infoName);
    if (symbID < 0) || (symbID >= currSymbolTableLength) {
        return ConcatStrings("Symbol not found: ", infoName);
    };
    var zCPar_Symbol symb; symb = _^(MEM_GetSymbolByIndex(symbID));

    // Verify that it is an instance
    if ((symb.bitfield & zCPar_Symbol_bitfield_type) != zPAR_TYPE_INSTANCE)
    || (!symb.offset) {
        return ConcatStrings("Symbol is not a C_Info instance: ", infoName);
    };

    // Verify that it is a oCInfo instance
    const int oCInfo___vftable = 8635468; //0x83C44C
    if (MEM_ReadInt(symb.offset-oCInfo_C_INFO_Offset) != oCInfo___vftable) {
        return ConcatStrings("Symbol is not a C_Info instance: ", infoName);
    };

    var oCInfo info; info = _^(symb.offset-oCInfo_C_INFO_Offset);
    info.told = !info.told;

    var string ret; ret = ConcatStrings(info.name, " is now ");

    if (info.told) {
        ret = ConcatStrings(ret, "told.");
    } else {
        ret = ConcatStrings(ret, "not told.");
    };

    return ret;
};
