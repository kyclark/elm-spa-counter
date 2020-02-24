module Page.Counter exposing (Model, Msg, init, update, view)

import Html exposing (Html, button, div, h1, p, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


type alias Model =
    Int


type Msg
    = Increment


init : Model
init =
    0


view : Model -> Html Msg
view model =
    div [ class "text-center" ]
        [ div [] [ text (String.fromInt model) ]
        , button
            -- The onClick function takes Increment value and will trigger an event
            -- whenever the user clicks on the button.
            -- When an event is triggered, the message value gets passed to the update
            -- function, then the update function returns the new model state.
            -- So whenever a user clicks the button, the onClick event will get triggered
            -- which will pass the Increment value to the update function.
            [ class "btn btn-primary", onClick Increment ]
            [ text "+" ]
        ]


update msg model =
    -- Here we're using a case expression, which is similar to a switch statement in
    -- JavaScript. We are checking to see what value the msg argument is. If the msg
    -- argument is Increment, then we're going to return the model value plus one. So
    -- we are effectively incrementing the model's value by one. This new model value will
    -- be passed into the view function and the view function will return the new HTML
    -- that gets rendered to the page.
    case msg of
        Increment ->
            model + 1
