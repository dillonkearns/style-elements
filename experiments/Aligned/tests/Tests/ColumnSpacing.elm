module Tests.ColumnSpacing exposing (..)

import Color exposing (..)
import Html
import Testable
import Testable.Element as Element exposing (..)
import Testable.Element.Background as Background
import Testable.Element.Font as Font
import Testable.Runner


{-| -}
main : Html.Html msg
main =
    Testable.Runner.show view


box attrs =
    el
        ([ width (px 50)
         , height (px 50)
         , Background.color blue
         ]
            ++ attrs
        )
        none


tinyBox attrs =
    el
        ([ width (px 20)
         , height (px 20)

         --  , centerY
         , Background.color darkCharcoal
         ]
            ++ attrs
        )
        none


container =
    el [ width (px 100), height (px 100) ]


view =
    let
        colContainer attrs children =
            column ([ spacing 20, width (px 100), height (px 500) ] ++ attrs) children
    in
    column
        []
        [ el [] (text "Spacing within a column")
        , row []
            [ colContainer []
                [ box [] ]
            , colContainer []
                [ box []
                , box []
                , box []
                ]
            , colContainer [ onRight (tinyBox []) ]
                [ box []
                , box []
                , box []
                ]
            ]
        ]
