module Handler.Home where

import Import

getHomeR :: Handler Html
getHomeR = do

    defaultLayout $ do
        setTitle "Welcome To Star-Exec-Presenter!"
        $(widgetFile "homepage")
