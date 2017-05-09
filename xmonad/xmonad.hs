import XMonad

main = xmonad $ defaultConfig
  { terminal = "xterm"
  , normalBorderColor = "black"
  , focusedBorderColor = "green"
  }
