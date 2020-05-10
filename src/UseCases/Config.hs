module UseCases.Config where

-- | global application configuration
data Config = Config {
  maxCapacity :: Int     -- ^ the max number of Seats in the Restaurant
, port        :: Int     -- ^ the port where the server is listening
, backend     :: Backend -- ^ selects the persistence backend for the KV store
, dbPath      :: String  -- ^ the path to the database
}

data Backend = SQLite | FileServer | InMemory deriving (Show)