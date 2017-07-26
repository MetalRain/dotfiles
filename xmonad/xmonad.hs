import XMonad
import XMonad.Config
import System.IO
import XMonad.Util.Run
import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Layout.ResizableTile 

main = do
  xmonad $ desktopConfig
    { terminal = "xterm"
    , normalBorderColor = "black"
    , focusedBorderColor = "green"
    , modMask = mod4Mask
    , manageHook = myManageHook
    , layoutHook = myLayoutHook
    }

myManageHook = manageDocks <+> manageHook desktopConfig

myLogHook h = dynamicLogWithPP $ defaultPP 
  { ppOutput = hPutStrLn h
  }

myLayoutHook = avoidStruts $ tiled ||| Full
  where tiled = Tall 1 (2/100) (3/5)
  
