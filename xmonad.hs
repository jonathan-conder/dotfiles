import XMonad
import XMonad.Hooks.ManageHelpers

main = xmonad defaultConfig
    { borderWidth        = 0
    , terminal           = "lxterminal"
    , manageHook         = composeOne [isFullscreen -?> doFullFloat]
    }
