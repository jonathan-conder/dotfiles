import XMonad
import XMonad.Actions.UpdateFocus
import XMonad.Hooks.EwmhDesktops

main = xmonad defaultConfig
    { borderWidth     = 0
    , terminal        = "lxterminal"
    , startupHook     = adjustEventInput
    , handleEventHook = handleEventHook defaultConfig <+> fullscreenEventHook <+> focusOnMouseMove
    }
