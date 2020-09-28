--


magAndDeg :: Double -> Double -> (Double, Double)
magAndDeg x y 
  | x == 0.0  = (mag, 90*signum(x))
  | otherwise = (mag, 180/pi * atan (y/x))
  where
    mag = sqrt (x^2 + y^2)

main = do
  putStrLn $ "For component: (-2.952, 0.000), the corresponding (mag, deg): " 
           ++ show (magAndDeg (-2.952)  0.000 )
  putStrLn $ "For component: ( 0.000,-3.848), the corresponding (mag, deg): " 
           ++ show (magAndDeg   0.000 (-3.848))
  putStrLn $ "For component: ( 2.452,-5.000), the corresponding (mag, deg): " 
           ++ show (magAndDeg   2.452 (-5.000))
  putStrLn $ "For component: (-6.939, 4.000), the corresponding (mag, deg): " 
           ++ show (magAndDeg (-6.939)  4.000 )
  
