module Schema.MenuItem exposing (..)

import GraphqElm.Argument as Argument exposing (Argument)
import GraphqElm.Field as Field exposing (Field, FieldDecoder)


menuItem : (a -> constructor) -> FieldDecoder (a -> constructor)
menuItem constructor =
    Field.object
        constructor
        "menuItems"
        []


id : FieldDecoder String
id =
    Field.string "id"


name : FieldDecoder String
name =
    Field.string "name"


contains : String -> Argument
contains =
    Argument.string "contains"