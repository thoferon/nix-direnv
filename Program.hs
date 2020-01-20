import Control.Monad (void)

import System.Environment
import System.Process
import System.Random

main :: IO ()
main = do
  port <- getEnv "PORT"
  number <- randomRIO (1,1000) :: IO Int

  let message =
        "The port is " ++ port ++ " and the random number is " ++ show number

  void $ rawSystem "cowsay" [message]