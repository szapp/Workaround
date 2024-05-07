/*
 * Toggle the "told" state of dialogs from the console
 * Written by mud-freak, 2018
 *
 * If using elsewhere, please be sure to remove the prefix "Patch_Workaround_" from all symbols! Please mention the
 * original source listed above.
 */


/*
 * Initialization function
 */
func void Patch_Workaround_CC_ToggleToldInit() {
    CC_Register(Patch_Workaround_CC_ToggleTold, "dia toggle ", "Toggle told status of C_Info dialogs");
};


/*
 * Function to toggle told status of infos
 */
func string Patch_Workaround_CC_ToggleTold(var string infoName) {
    // Find instance symbol by instance name
    var int symbID; symbID = MEM_GetSymbolIndex(infoName);

    // Get info in a safe way (instance might not be initialized!)
    // Taken and modified from G1CP - https://g1cp.org
    MEM_InitGlobalInst();
    var int infoMan; infoMan = MEM_Game.infoman;

    const int oCInfoManager__GetInformation[4] = {/*G1*/6703616, /*G1A*/6888576, /*G2*/6966912, /*G2A*/7350544};
    const int call = 0;
    if (CALL_Begin(call)) {
        CALL_IntParam(_@(symbID));
        CALL_PutRetValTo(_@(infoPtr));
        CALL__thiscall(_@(infoMan), oCInfoManager__GetInformation[PATCH_WORKAROUND_EXE]);
        call = CALL_End();
    };
    var int infoPtr;
    if (!infoPtr) {
        return ConcatStrings("Symbol is not a C_Info instance: ", infoName);
    };

    var oCInfo info; info = _^(infoPtr);
    info.told = !info.told;

    var string ret; ret = ConcatStrings(info.name, " is now ");

    if (info.told) {
        ret = ConcatStrings(ret, "told.");
    } else {
        ret = ConcatStrings(ret, "not told.");
    };

    return ret;
};
