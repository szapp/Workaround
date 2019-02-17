/*
 * Call this function (from the function "Ninja_Workaround_Init" below) to initialize LeGo packages.
 *
 * It ensures that all necessary LeGo packages will be loaded without breaking already loaded LeGo packages.
 *
 * Caution: When re-using this function elsewhere, it is important to rename it to prevent clashes!
 * Each patch that needs it, has to have their own function with a unique name. Otherwise they cannot be stacked.
 *
 * Do not modify this function in any way!
 */
func void Ninja_Workaround_MergeLeGoFlags(var int flags) {
    const int legoInit    = -1; // Prior initialization state
    const int initialized =  0; // Once per session
    var   int loaded;           // Once per game save
    legoInit    = LeGo_MergeFlags(flags, legoInit, initialized, loaded);
    initialized = 1;
    loaded      = 1;
};


/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_Workaround_Init() {
    // Wrapper for "LeGo_Init" to ensure correct LeGo initialization without breaking the mod
    Ninja_Workaround_MergeLeGoFlags(LeGo_ConsoleCommands);

    CC_CallInit();
    CC_ToggleToldInit();
};
