{-# LANGUAGE TemplateHaskell #-}
module Data.DataSets.Internal
    ( readData
    , readInt
    , readText
    , readDouble
    , Text
    ) where

import Control.Monad
import Data.Char (toUpper, toLower)
import Data.List.Split (splitOn)
import qualified Data.ByteString.Char8 as B
import qualified Data.Text as T
import Data.Text (Text)
import qualified Data.ByteString.Lex.Double as L
import Data.Maybe (fromJust)
import Language.Haskell.TH
import System.IO.Unsafe (unsafePerformIO)
import Paths_datasets

readData :: FilePath -> [String] -> Q [Dec]
readData fl ts' = do
    signature <- sigD (mkName dataName) $ appT [t|[]|] $ conT dataTypeName
    dataTypeDecl <- dataD (cxt []) dataTypeName [] [c] [mkName "Show"]
    importData <- [d| $(varP $ mkName dataName) =
                        map $(fromCSVRecord dataTypeName ts) $ unsafeReadCSV fl
                    |]
    return $ signature : dataTypeDecl : importData
  where
    dataName = map toLower . head . splitOn "." . last . splitOn "/" $ fl
    dataTypeName = mkName . map toUpper $ dataName
    c = runIO $ do
        xs <- readHeader fl
        let mkFieldName x = mkName $ dataName ++ (toUpper (head x) : tail x)
            y = zipWith (\a b -> varStrictType (mkFieldName a) (strictType isStrict (conT . mkName $ b))) xs ts
        runQ $ recC dataTypeName y
    ts = "Text" : ts'

readHeader :: FilePath -> IO [String]
readHeader fl = do
    c <- readFile =<< getDataFileName fl
    return . ("id":) . map read . tail . splitOn "," . head . lines $ c
{-# INLINE readHeader #-}

unsafeReadCSV :: FilePath -> [[B.ByteString]]
unsafeReadCSV fl = unsafePerformIO $ do
    c <- B.readFile =<< getDataFileName fl
    return . map (B.split ',') . tail . B.lines $ c

-- | return a function which takes a list of bytestrings as input, output desirable
-- data value
fromCSVRecord :: Name -> [String] -> Q Exp
fromCSVRecord constr ts = do
    xs <- replicateM n (newName "x")
    lamE [listP $ map varP xs] $ foldl appE (conE constr) $ zipWith f ts xs
  where
    f t x = case t of
        "Int" -> appE (varE (mkName "readInt")) $ varE x
        "Double" -> appE (varE (mkName "readDouble")) $ varE x
        "Text" -> appE (varE (mkName "readText")) $ varE x
        _ -> undefined
    n = length ts

readInt :: B.ByteString -> Int
readInt = fst . fromJust . B.readInt
{-# INLINE readInt #-}

readText :: B.ByteString -> Text
readText x | B.head x == '\"' && B.last x == '\"' = T.pack . B.unpack . B.init . B.tail $ x
           | otherwise = error "not a text"
{-# INLINE readText #-}

readDouble :: B.ByteString -> Double
readDouble = fst . fromJust . L.readDouble
{-# INLINE readDouble #-}
