module BugApp where

import App exposing (..)
import StartApp.Simple exposing (start)


main =
  start
    { model = init
    , update = update
    , view = view
    }
