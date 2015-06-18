-- | Here we store a data, representing our notebook
module World (world) where

import           Data.Time.Clock       (UTCTime)
import           Data.Time.Clock.POSIX

-- | Helper that makes "UTCTime" instances out of "Integral"
iToU :: Integral a => a -> UTCTime
iToU = (posixSecondsToUTCTime . fromIntegral)
