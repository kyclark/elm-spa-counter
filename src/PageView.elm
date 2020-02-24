module PageView exposing (view)

import Browser exposing (Document)
import Html exposing (Html, a, div, text)
import Route exposing (Route)


view : Html msg -> Document msg
view content =
    let
        header =
            div []
                [ a [ Route.href Route.Home ] [ text "Home" ]
                , text " | "
                , a [ Route.href Route.Counter ] [ text "Counter" ]
                ]
    in
    { title = "SRC Portal"
    , body =
        [ header
        , content
        ]
    }
