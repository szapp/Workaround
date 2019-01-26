Workaround Patch
================

Forked from https://github.com/szapp/NinjaPatchTemplate


Workaround patch for Gothic and Gothic 2 NotR

This patch provides various workarounds to story bugs in mods. It is especially useful to introduce workarounds to
common story bugs in mods (e.g. close a dead quest, reset a dialog that was spoken too early, change the value of a
variable, etc.). Until the mod team can provide a fix, this patch is a great temporary solution for critical bugs.


Console commands:

DIA TOGGLE [C_INFO]                                 -- Toggle told-status of C_Info dialog
CALL LOG_SETTOPICSTATUS [TOPICNAME] LOG_SUCCESS     -- Set quest to successful (might not suffice in all cases)
CALL SETI "[VARNAME]" [NEWVALUE]                    -- Set integer variable to a new value
CALL [FUNCTION]                                     -- Call any Daedalus or external function, for more info visit
                                                       https://forum.worldofplayers.de/forum/threads/?p=25621202


Patch includes Ikarus and LeGo (and various scripts written by mud-freak).


Ninja <http://tiny.cc/GothicNinja>
