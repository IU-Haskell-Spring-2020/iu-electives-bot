{-# LANGUAGE OverloadedStrings #-}


module Main where

import qualified Data.Text                        as Text
import          TelegramBot                       as TelegramBot
import qualified Telegram.Bot.API                 as Telegram

main :: IO ()
main = do 
  putStrLn "Please, enter Telegram bot's API token:" 
  token <- Telegram.Token . Text.pack <$> getLine
    
  TelegramBot.run token