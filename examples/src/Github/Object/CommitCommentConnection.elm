-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.CommitCommentConnection exposing (edges, nodes, pageInfo, selection, totalCount)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.CommitCommentConnection
selection constructor =
    Object.selection constructor


{-| A list of edges.
-}
edges : SelectionSet decodesTo Github.Object.CommitCommentEdge -> Field (Maybe (List (Maybe decodesTo))) Github.Object.CommitCommentConnection
edges object_ =
    Object.selectionField "edges" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo Github.Object.CommitComment -> Field (Maybe (List (Maybe decodesTo))) Github.Object.CommitCommentConnection
nodes object_ =
    Object.selectionField "nodes" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo Github.Object.PageInfo -> Field decodesTo Github.Object.CommitCommentConnection
pageInfo object_ =
    Object.selectionField "pageInfo" [] object_ identity


{-| Identifies the total count of items in the connection.
-}
totalCount : Field Int Github.Object.CommitCommentConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
