module Main where


foreign import ccall "glue.h is_main_thread" isMainThread :: IO Bool

main :: IO ()
main = do
    mt <- isMainThread
    print mt
