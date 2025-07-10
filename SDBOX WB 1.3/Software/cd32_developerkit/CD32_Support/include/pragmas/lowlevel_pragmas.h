/*--- functions in V40 or higher (Release 3.1) ---*/
/**/
/* CONTROLLER HANDLING*/
/**/
#pragma libcall LowLevelBase ReadJoyPort 1E 001
/**/
/* LANGUAGE HANDLING*/
/**/
#pragma libcall LowLevelBase GetLanguageSelection 24 0
/*pragma libcall LowLevelBase lowlevelPrivate1 2A 0*/
/**/
/* KEYBOARD HANDLING*/
/**/
#pragma libcall LowLevelBase GetKey 30 0
#pragma libcall LowLevelBase QueryKeys 36 1802
#pragma libcall LowLevelBase AddKBInt 3C 9802
#pragma libcall LowLevelBase RemKBInt 42 901
/**/
/* SYSTEM HANDLING*/
/**/
#pragma libcall LowLevelBase SystemControlA 48 901
/**/
/* TIMER HANDLING*/
/**/
#pragma libcall LowLevelBase AddTimerInt 4E 9802
#pragma libcall LowLevelBase RemTimerInt 54 901
#pragma libcall LowLevelBase StopTimerInt 5A 901
#pragma libcall LowLevelBase StartTimerInt 60 10903
#pragma libcall LowLevelBase ElapsedTime 66 801
/**/
/* VBLANK HANDLING*/
/**/
#pragma libcall LowLevelBase AddVBlankInt 6C 9802
#pragma libcall LowLevelBase RemVBlankInt 72 901
/*pragma libcall LowLevelBase lowlevelPrivate2 78 0*/
/*pragma libcall LowLevelBase lowlevelPrivate3 7E 0*/
/**/
/* MORE CONTROLLER HANDLING*/
/**/
#pragma libcall LowLevelBase SetJoyPortAttrsA 84 9002
/*pragma libcall LowLevelBase lowlevelPrivate4 8A 0*/
/*pragma libcall LowLevelBase lowlevelPrivate5 90 0*/
/*pragma libcall LowLevelBase lowlevelPrivate6 96 0*/
/*pragma libcall LowLevelBase lowlevelPrivate7 9C 0*/
/*pragma libcall LowLevelBase lowlevelPrivate8 A2 0*/
