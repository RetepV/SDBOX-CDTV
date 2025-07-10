/* SimCD32.rexx 931214 */

/* This is an interactive program for experimenting with ARexx and      */
/* SimCD32's ARexx commands.  At the SIM> prompt, you can enter		*/
/* any valid ARexx clause.  This script will immediately execute        */
/* those statements and display any results.  To terminate, type        */
/* EXIT at the SIM> prompt.                                             */

/* The SimCD32 ARexx port supports the following commands:              */

/* Quit       -- Cause SimCD32 to exit.                                 */
/* GetISOName -- Returns the file name of the current ISO image.        */
/* SetISOName -- Set the ISO image to the given file (must provide the  */
/*               complete path name). This can be used to change the    */
/*               image that is mounted, (say from work:isoimage to      */
/*               work:isoimage2 or whatever).                           */
/*               Example:                                               */
/*                       "SetISOName work:isoimage2"                    */
/*               Note that the quotes are required                      */

/* These constants let us control of the console's text colors. */
csi = "9b"x                              /* Command Sequence Introducer */
normal  = csi || "31;40m"
reverse = csi || "33;41m"
hilite  = csi || "32;40m"

say ""
say ""
say reverse "SIM: Interactive SimCD32/ARexx Console" normal
say " The SimCD32 ARexx port supports the following commands:" hilite

say " Quit       -- Cause SimCD32 to exit."
say " GetISOName -- Returns the file name of the current ISO image."
say " SetISOName -- Set the ISO image to the given file (must provide the"
say "               complete path name and whole command must be in quotes)."
say "               This can be used to change the image that is mounted,"
say "               (say from work:isoimage to work:isoimage2 or whatever)."
say "               Example:"
say '                       "SetISOName work:isoimage2"'
say "               Note that the quotes are required" normal
say ""
say "  (Type EXIT to terminate)"
say ""


address SimCD32                /* Send commands to the SimCD32 ARexx port. */
options prompt hilite || "SIM>" || normal || " "     /* A nice prompt. */
options results              /* We want results back. */
signal on syntax             /* Handle errors using our own ARexx error handler. */


do forever

    parse pull command       /* get a command from the user */

    drop rc                  /* clear out previous return code */

    drop result              /* clear out previous result */

    interpret command        /* execute the command */


    /* Variable 'result' contains the result of our command. */
    /* We'll only print 'result' if we actually got something. */

    if ( symbol('result') == 'VAR' ) then
        say "The result is:" result

    say ""
end


/* Our own ARexx handler for fatal errors */

syntax:

if ( rc = 13 ) then
    say "*** SimCD32 port SimCD32 not found ***"
else
    say "*** Error" rc "at line" sigl "of SimCD32.rexx ***"

exit
