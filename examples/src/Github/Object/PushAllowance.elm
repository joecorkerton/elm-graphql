-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.PushAllowance exposing (actor, id, protectedBranch, selection)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PushAllowance
selection constructor =
    Object.selection constructor


{-| The actor that can push.
-}
actor : SelectionSet decodesTo Github.Union.PushAllowanceActor -> Field (Maybe decodesTo) Github.Object.PushAllowance
actor object_ =
    Object.selectionField "actor" [] object_ (identity >> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.PushAllowance
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the protected branch associated with the allowed user or team.
-}
protectedBranch : SelectionSet decodesTo Github.Object.ProtectedBranch -> Field decodesTo Github.Object.PushAllowance
protectedBranch object_ =
    Object.selectionField "protectedBranch" [] object_ identity
