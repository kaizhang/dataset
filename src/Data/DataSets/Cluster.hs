{-# LANGUAGE TemplateHaskell #-}

module Data.DataSets.Cluster where

import Data.DataSets.Internal

$(readData "data/cluster/xclara.csv" ["Double", "Double"])
