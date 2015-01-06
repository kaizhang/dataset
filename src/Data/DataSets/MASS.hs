{-# LANGUAGE TemplateHaskell #-}

module Data.DataSets.MASS where

import Data.DataSets.Internal

$(readData "data/MASS/Skye.csv" ["Int", "Int", "Int"])
