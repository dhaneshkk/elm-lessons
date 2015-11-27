import StartApp.Simple exposing (start)
import Graphics.Element exposing (..)
import Mouse


type alias Model = Int

initialModel :Model
initialModel = 0

type Action = Increment

update : Action -> Model -> Model
update action model
        case action of 
          Increment -> model+1

view: Model->Element
view model =
  show model

model: Signal Model
model =
    Signal.foldp update initialModel Mouse.clicks

main =
  start
    { model = initialModel
    , update = update
    , view = view
    }

