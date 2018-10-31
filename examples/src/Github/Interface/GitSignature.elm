-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.GitSignature exposing (commonSelection, email, isValid, onGpgSignature, onSmimeSignature, onUnknownSignature, payload, selection, signature, signer, state)

import Github.Enum.GitSignatureState
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.GitSignature
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.GitSignature) -> SelectionSet (a -> constructor) Github.Interface.GitSignature
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onGpgSignature : SelectionSet decodesTo Github.Object.GpgSignature -> FragmentSelectionSet decodesTo Github.Interface.GitSignature
onGpgSignature (SelectionSet fields decoder) =
    FragmentSelectionSet "GpgSignature" fields decoder


onSmimeSignature : SelectionSet decodesTo Github.Object.SmimeSignature -> FragmentSelectionSet decodesTo Github.Interface.GitSignature
onSmimeSignature (SelectionSet fields decoder) =
    FragmentSelectionSet "SmimeSignature" fields decoder


onUnknownSignature : SelectionSet decodesTo Github.Object.UnknownSignature -> FragmentSelectionSet decodesTo Github.Interface.GitSignature
onUnknownSignature (SelectionSet fields decoder) =
    FragmentSelectionSet "UnknownSignature" fields decoder


{-| Email used to sign this object.
-}
email : Field String Github.Interface.GitSignature
email =
    Object.fieldDecoder "email" [] Decode.string


{-| True if the signature is valid and verified by GitHub.
-}
isValid : Field Bool Github.Interface.GitSignature
isValid =
    Object.fieldDecoder "isValid" [] Decode.bool


{-| Payload for GPG signing object. Raw ODB object without the signature header.
-}
payload : Field String Github.Interface.GitSignature
payload =
    Object.fieldDecoder "payload" [] Decode.string


{-| ASCII-armored signature header from object.
-}
signature : Field String Github.Interface.GitSignature
signature =
    Object.fieldDecoder "signature" [] Decode.string


{-| GitHub user corresponding to the email signing this commit.
-}
signer : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Interface.GitSignature
signer object_ =
    Object.selectionField "signer" [] object_ (identity >> Decode.nullable)


{-| The state of this signature. `VALID` if signature is valid and verified by GitHub, otherwise represents reason why signature is considered invalid.
-}
state : Field Github.Enum.GitSignatureState.GitSignatureState Github.Interface.GitSignature
state =
    Object.fieldDecoder "state" [] Github.Enum.GitSignatureState.decoder
