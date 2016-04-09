module App where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List exposing (..)

-- MODEL
type alias Model = 
    { lastAction: Action
    }
    
noHtml = text ""

init: Model
init =
    Model MaxLength10

-- UPDATE

type Action = MaxLength10 | NoMaxLength

update : Action -> Model -> Model
update action model =
    Model action


-- VIEW
view : Signal.Address Action -> Model -> Html
view address model =  
    div 
        []
        [ div 
            []
            [ button [ onClick address MaxLength10 ] [ text "10 characters only" ]
            , button [ onClick address NoMaxLength ] [ text "Any number of characters" ]
            ]   
            
        , case model.lastAction of
            MaxLength10 ->
                div [] [ input [ maxlength 10, value "Te kutya!" ] [] ]
            NoMaxLength ->
                div [] [ input [ value "Te kutya!" ] [] ]
        ]