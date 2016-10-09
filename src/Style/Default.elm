module Style.Default exposing (..)

import Style exposing (..)
import Color
import Html
import Dict


style : Model
style =
    { addClass = Nothing
    , layout = textLayout { spacing = all 0 }
    , visibility = visible
    , position = position
    , colors = colors
    , text = text
    , border = border
    , cursor = "auto"
    , width = auto
    , height = auto
    , padding = all 0
    , float = Nothing
    , inline = False
    , backgroundImage = Nothing
    , textShadows = []
    , shadows = []
    , insetShadows = []
    , transforms = []
    , filters = []
    , transitions = []
    , animation = Nothing
    }


variation : Variation
variation =
    { layout = Nothing
    , visibility = Nothing
    , position = Nothing
    , colors = Nothing
    , text = Nothing
    , border = Nothing
    , cursor = Nothing
    , width = Nothing
    , height = Nothing
    , padding = Nothing
    , float = Nothing
    , inline = False
    , backgroundImage = Nothing
    , textShadows = []
    , shadows = []
    , insetShadows = []
    , transforms = []
    , filters = []
    , transitions = []
    , animation = Nothing
    }


horizontal : Layout
horizontal =
    flowRight
        { wrap = True
        , spacing = all 10
        , horizontal = alignCenter
        , vertical = verticalCenter
        }


vertical : Layout
vertical =
    flowDown
        { wrap = True
        , spacing = all 10
        , horizontal = alignCenter
        , vertical = verticalCenter
        }


text : Text
text =
    { font = "georgia"
    , size = 16
    , characterOffset = Nothing
    , lineHeight = 1.0
    , italic = False
    , boldness = Nothing
    , align = alignLeft
    , decoration = Nothing
    , whitespace = normal
    }


border : Border
border =
    { style = solid
    , width = all 0
    , corners = all 0
    }


colors : Colors
colors =
    { background = Color.white
    , text = Color.black
    , border = Color.grey
    }


position : Position
position =
    { relativeTo = currentPosition
    , anchor = topLeft
    , position = ( 0, 0 )
    }


(=>) =
    (,)


rotating : List ( Float, Variation )
rotating =
    [ 0 => { variation | transforms = [ rotate 0 0 0 ] }
    , 100 => { variation | transforms = [ rotate 0 0 360 ] }
    ]


reverseRotating : List ( Float, Variation )
reverseRotating =
    [ 0 => { variation | transforms = [ rotate 0 0 360 ] }
    , 100 => { variation | transforms = [ rotate 0 0 0 ] }
    ]


forever =
    1.0 / 0