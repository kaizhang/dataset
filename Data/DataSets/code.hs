{-# LANGUAGE OverloadedStrings, UnicodeSyntax, TemplateHaskell, BangPatterns #-}
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import Shelly
import System.Environment

writeCode ∷ (T.Text,T.Text) → T.Text
writeCode (fl,path) = let name = T.toLower $ head $ T.splitOn ".csv" $ last $ T.splitOn "/" fl
                      in T.unlines [name `T.append` " ∷ IO DataSet", name `T.append` " = readData " `T.append` (T.pack $ show $ T.unpack path)]

main = do
    [dir] ← getArgs
    let prefix = "Data/DataSets/"
    fls ← shelly $ lsT $ fromText $ T.pack dir
    let lists = fmap (T.append prefix) fls
    mapM_ (TIO.putStrLn.writeCode) $ zip fls lists
    mapM_ TIO.putStrLn lists
