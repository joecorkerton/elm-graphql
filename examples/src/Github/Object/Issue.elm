-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Issue exposing (AssigneesOptionalArguments, CommentsOptionalArguments, LabelsOptionalArguments, ParticipantsOptionalArguments, ProjectCardsOptionalArguments, ReactionsOptionalArguments, TimelineOptionalArguments, UserContentEditsOptionalArguments, activeLockReason, assignees, author, authorAssociation, body, bodyHTML, bodyText, closed, closedAt, comments, createdAt, createdViaEmail, databaseId, editor, id, labels, lastEditedAt, locked, milestone, number, participants, projectCards, publishedAt, reactionGroups, reactions, repository, resourcePath, selection, state, timeline, title, updatedAt, url, userContentEdits, viewerCanReact, viewerCanSubscribe, viewerCanUpdate, viewerCannotUpdateReasons, viewerDidAuthor, viewerSubscription)

import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason
import Github.Enum.IssueState
import Github.Enum.LockReason
import Github.Enum.ReactionContent
import Github.Enum.SubscriptionState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Issue
selection constructor =
    Object.selection constructor


{-| Reason that the conversation was locked.
-}
activeLockReason : Field (Maybe Github.Enum.LockReason.LockReason) Github.Object.Issue
activeLockReason =
    Object.fieldDecoder "activeLockReason" [] (Github.Enum.LockReason.decoder |> Decode.nullable)


type alias AssigneesOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| A list of Users assigned to this object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
assignees : (AssigneesOptionalArguments -> AssigneesOptionalArguments) -> SelectionSet decodesTo Github.Object.UserConnection -> Field decodesTo Github.Object.Issue
assignees fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "assignees" optionalArgs object_ identity


{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.Issue
author object_ =
    Object.selectionField "author" [] object_ (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : Field Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.Issue
authorAssociation =
    Object.fieldDecoder "authorAssociation" [] Github.Enum.CommentAuthorAssociation.decoder


{-| Identifies the body of the issue.
-}
body : Field String Github.Object.Issue
body =
    Object.fieldDecoder "body" [] Decode.string


{-| Identifies the body of the issue rendered to HTML.
-}
bodyHTML : Field Github.Scalar.Html Github.Object.Issue
bodyHTML =
    Object.fieldDecoder "bodyHTML" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Html)


{-| Identifies the body of the issue rendered to text.
-}
bodyText : Field String Github.Object.Issue
bodyText =
    Object.fieldDecoder "bodyText" [] Decode.string


{-| `true` if the object is closed (definition of closed may depend on type)
-}
closed : Field Bool Github.Object.Issue
closed =
    Object.fieldDecoder "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.Issue
closedAt =
    Object.fieldDecoder "closedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


type alias CommentsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| A list of comments associated with the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Github.Object.IssueCommentConnection -> Field decodesTo Github.Object.Issue
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "comments" optionalArgs object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.Issue
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : Field Bool Github.Object.Issue
createdViaEmail =
    Object.fieldDecoder "createdViaEmail" [] Decode.bool


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.Issue
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.Issue
editor object_ =
    Object.selectionField "editor" [] object_ (identity >> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Issue
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


type alias LabelsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| A list of labels associated with the object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
labels : (LabelsOptionalArguments -> LabelsOptionalArguments) -> SelectionSet decodesTo Github.Object.LabelConnection -> Field (Maybe decodesTo) Github.Object.Issue
labels fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "labels" optionalArgs object_ (identity >> Decode.nullable)


{-| The moment the editor made the last edit
-}
lastEditedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.Issue
lastEditedAt =
    Object.fieldDecoder "lastEditedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| `true` if the object is locked
-}
locked : Field Bool Github.Object.Issue
locked =
    Object.fieldDecoder "locked" [] Decode.bool


{-| Identifies the milestone associated with the issue.
-}
milestone : SelectionSet decodesTo Github.Object.Milestone -> Field (Maybe decodesTo) Github.Object.Issue
milestone object_ =
    Object.selectionField "milestone" [] object_ (identity >> Decode.nullable)


{-| Identifies the issue number.
-}
number : Field Int Github.Object.Issue
number =
    Object.fieldDecoder "number" [] Decode.int


type alias ParticipantsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| A list of Users that are participating in the Issue conversation.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
participants : (ParticipantsOptionalArguments -> ParticipantsOptionalArguments) -> SelectionSet decodesTo Github.Object.UserConnection -> Field decodesTo Github.Object.Issue
participants fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "participants" optionalArgs object_ identity


type alias ProjectCardsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| List of project cards associated with this issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
projectCards : (ProjectCardsOptionalArguments -> ProjectCardsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectCardConnection -> Field decodesTo Github.Object.Issue
projectCards fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "projectCards" optionalArgs object_ identity


{-| Identifies when the comment was published at.
-}
publishedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.Issue
publishedAt =
    Object.fieldDecoder "publishedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo Github.Object.ReactionGroup -> Field (Maybe (List decodesTo)) Github.Object.Issue
reactionGroups object_ =
    Object.selectionField "reactionGroups" [] object_ (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Github.InputObject.ReactionOrder }


{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments) -> SelectionSet decodesTo Github.Object.ReactionConnection -> Field decodesTo Github.Object.Issue
reactions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "content" filledInOptionals.content (Encode.enum Github.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeReactionOrder ]
                |> List.filterMap identity
    in
    Object.selectionField "reactions" optionalArgs object_ identity


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.Issue
repository object_ =
    Object.selectionField "repository" [] object_ identity


{-| The HTTP path for this issue
-}
resourcePath : Field Github.Scalar.Uri Github.Object.Issue
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the state of the issue.
-}
state : Field Github.Enum.IssueState.IssueState Github.Object.Issue
state =
    Object.fieldDecoder "state" [] Github.Enum.IssueState.decoder


type alias TimelineOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, since : OptionalArgument Github.Scalar.DateTime }


{-| A list of events, comments, commits, etc. associated with the issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - since - Allows filtering timeline events by a `since` timestamp.

-}
timeline : (TimelineOptionalArguments -> TimelineOptionalArguments) -> SelectionSet decodesTo Github.Object.IssueTimelineConnection -> Field decodesTo Github.Object.Issue
timeline fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, since = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "since" filledInOptionals.since (\(Github.Scalar.DateTime raw) -> Encode.string raw) ]
                |> List.filterMap identity
    in
    Object.selectionField "timeline" optionalArgs object_ identity


{-| Identifies the issue title.
-}
title : Field String Github.Object.Issue
title =
    Object.fieldDecoder "title" [] Decode.string


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.Issue
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this issue
-}
url : Field Github.Scalar.Uri Github.Object.Issue
url =
    Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


type alias UserContentEditsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| A list of edits to this content.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments) -> SelectionSet decodesTo Github.Object.UserContentEditConnection -> Field (Maybe decodesTo) Github.Object.Issue
userContentEdits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "userContentEdits" optionalArgs object_ (identity >> Decode.nullable)


{-| Can user react to this subject
-}
viewerCanReact : Field Bool Github.Object.Issue
viewerCanReact =
    Object.fieldDecoder "viewerCanReact" [] Decode.bool


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : Field Bool Github.Object.Issue
viewerCanSubscribe =
    Object.fieldDecoder "viewerCanSubscribe" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : Field Bool Github.Object.Issue
viewerCanUpdate =
    Object.fieldDecoder "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : Field (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.Issue
viewerCannotUpdateReasons =
    Object.fieldDecoder "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : Field Bool Github.Object.Issue
viewerDidAuthor =
    Object.fieldDecoder "viewerDidAuthor" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : Field Github.Enum.SubscriptionState.SubscriptionState Github.Object.Issue
viewerSubscription =
    Object.fieldDecoder "viewerSubscription" [] Github.Enum.SubscriptionState.decoder
