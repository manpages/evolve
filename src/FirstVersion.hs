-- | Here we emulate a first attempt at modelling data of a note keeping application
-- this approach is very naive
module FirstVersion (parse) where

import           Data.Time.Clock (UTCTime)

-- | Model of the the notebook
type World   = [(UTCTime, String)]

type Words   = [String]
newtype Verb = Verb String
newtype Noun = Noun String

-- | Model of the notebook entry
-- It is incomplete in two senses — first and foremost, it doesn't capture the fact
-- that not every text written in a notebook can be captured as a pair of Verb and
-- Noun, secondly — our notebook has checkboxes, but we don't know about it yet.
data Entry   = Entry (UTCTime, Verb, Noun)

-- | 'World' parses into this type
type Parsed  = [Entry]

parse = 42
