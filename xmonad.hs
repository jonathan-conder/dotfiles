import XMonad
import XMonad.Hooks.EwmhDesktops

main = xmonad defaultConfig
    { borderWidth     = 0
    , terminal        = "lxterminal"
    , handleEventHook = handleEventHook defaultConfig <+> fullscreenEventHook
    }
