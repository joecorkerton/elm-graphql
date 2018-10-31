-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.DeployKey exposing (createdAt, id, key, readOnly, selection, title, verified)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeployKey
selection constructor =
    Object.selection constructor


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.DeployKey
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


id : Field Github.Scalar.Id Github.Object.DeployKey
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The deploy key.
-}
key : Field String Github.Object.DeployKey
key =
    Object.fieldDecoder "key" [] Decode.string


{-| Whether or not the deploy key is read only.
-}
readOnly : Field Bool Github.Object.DeployKey
readOnly =
    Object.fieldDecoder "readOnly" [] Decode.bool


{-| The deploy key title.
-}
title : Field String Github.Object.DeployKey
title =
    Object.fieldDecoder "title" [] Decode.string


{-| Whether or not the deploy key has been verified.
-}
verified : Field Bool Github.Object.DeployKey
verified =
    Object.fieldDecoder "verified" [] Decode.bool
