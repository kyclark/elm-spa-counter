module Page.Counter exposing (Model, Msg, init, update, view)

import Html exposing (Html, button, div, h1, p, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


type alias Model =
    Int


type Msg
    = Increment
    | Decrement


init : Model
init =
    0


view : Model -> Html Msg
view model =
    div [ class "text-center" ]
        [ div [] [ text (String.fromInt model) ]
        , button
            [ class "btn btn-primary", onClick Increment ]
            [ text "+" ]
        , button
            [ class "btn btn-primary", onClick Decrement ]
            [ text "-" ]
        ]


update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
