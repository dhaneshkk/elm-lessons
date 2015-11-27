import Graphics.Element exposing (..)
import Mouse

type alias Model = Int

initialModel :Model
initialModel = 0



update: a->Model->Model
update event model
        = model+1

view: Model->Element
view model =
  show model

model: Signal Model
model =
    Signal.foldp update initialModel Mouse.clicks

main : Signal Element
main =
  Signal.map view model

