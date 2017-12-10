module Main exposing (..)

import Html exposing (..)
import Utils


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = init
        , view = view
        , update = update
        }



-- Model


type alias Model =
    { name : String }


init : Model
init =
    Model "world"



-- Update


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model



-- View


view : Model -> Html Msg
view model =
    h1 []
        [ text ("Hello " ++ (Utils.capitalize model.name)) ]
