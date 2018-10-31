-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Project exposing (ColumnsOptionalArguments, PendingCardsOptionalArguments, body, bodyHTML, closed, closedAt, columns, createdAt, creator, databaseId, id, name, number, owner, pendingCards, resourcePath, selection, state, updatedAt, url, viewerCanUpdate)

import Github.Enum.ProjectState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Project
selection constructor =
    Object.selection constructor


{-| The project's description body.
-}
body : Field (Maybe String) Github.Object.Project
body =
    Object.fieldDecoder "body" [] (Decode.string |> Decode.nullable)


{-| The projects description body rendered to HTML.
-}
bodyHTML : Field Github.Scalar.Html Github.Object.Project
bodyHTML =
    Object.fieldDecoder "bodyHTML" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Html)


{-| `true` if the object is closed (definition of closed may depend on type)
-}
closed : Field Bool Github.Object.Project
closed =
    Object.fieldDecoder "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.Project
closedAt =
    Object.fieldDecoder "closedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


type alias ColumnsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| List of columns in the project

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
columns : (ColumnsOptionalArguments -> ColumnsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectColumnConnection -> Field decodesTo Github.Object.Project
columns fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "columns" optionalArgs object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.Project
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The actor who originally created the project.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.Project
creator object_ =
    Object.selectionField "creator" [] object_ (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.Project
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Project
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The project's name.
-}
name : Field String Github.Object.Project
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The project's number.
-}
number : Field Int Github.Object.Project
number =
    Object.fieldDecoder "number" [] Decode.int


{-| The project's owner. Currently limited to repositories and organizations.
-}
owner : SelectionSet decodesTo Github.Interface.ProjectOwner -> Field decodesTo Github.Object.Project
owner object_ =
    Object.selectionField "owner" [] object_ identity


type alias PendingCardsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| List of pending cards in this project

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
pendingCards : (PendingCardsOptionalArguments -> PendingCardsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectCardConnection -> Field decodesTo Github.Object.Project
pendingCards fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "pendingCards" optionalArgs object_ identity


{-| The HTTP path for this project
-}
resourcePath : Field Github.Scalar.Uri Github.Object.Project
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Whether the project is open or closed.
-}
state : Field Github.Enum.ProjectState.ProjectState Github.Object.Project
state =
    Object.fieldDecoder "state" [] Github.Enum.ProjectState.decoder


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.Project
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this project
-}
url : Field Github.Scalar.Uri Github.Object.Project
url =
    Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : Field Bool Github.Object.Project
viewerCanUpdate =
    Object.fieldDecoder "viewerCanUpdate" [] Decode.bool
