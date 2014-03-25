{-# LANGUAGE OverloadedStrings, UnicodeSyntax #-}

module Data.DataSets.Internal where

import qualified Data.ByteString.Char8 as B
import qualified Data.Vector as V
import Data.ByteString.Lex.Double
import Data.Maybe
import Control.Applicative
import Data.List
import Paths_datasets

type DataSet = ([String], [V.Vector Double])

parseCSV ∷ B.ByteString → DataSet
parseCSV csv = let (names:val) = B.split ',' <$> B.lines csv
               in ( read . B.unpack <$> tail names,
                  tail $ fmap V.fromList $ transpose $ (fmap.fmap) (fst.fromMaybe (0/0, "NaN").readDouble) val )

readData ∷ FilePath → IO DataSet
readData fl = do
    f ← B.readFile =<< getDataFileName fl
    return $ parseCSV f
