module Const (
grid, languages, play,
Cell( Cell ), Cordinates, Grid, ParametrizedGrid, Point, Row, Screen
) where

import Data.List
import Data.Maybe (catMaybes)


type Grid = [String]
--    Type grid is a synonym for a list of Strings which can be used as a puzzle e.g
--    [ "__C________R___"
--    , "__SI________U__"
--    , "__HASKELL____B_"
--    , "__A__A_____S__Y"
--    , "__R___B___C____"
--    , "__PHP____H_____"
--    , "____S_LREP_____"
--    , "____I__M_Y__L__"
--    , "____L_E__T_O___"
--    , "_________HB____"
--    , "_________O_____"
--    , "________CN_____"
--    ]


type Cordinates = [[(Int, Int)]]
--    An alias for a cordinate grid with emulated by a list of lists of (column, row) e.g
--    [
--    [(0,0),(1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0)]
--    [(0,1),(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1)]
--    [(0,2),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2)]
--    [(0,3),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3)]
--    [(0,4),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4)]
--    [(0,5),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5)]
--    [(0,6),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6)]
--    [(0,7),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7)]
--    ]


type Point = ((Int, Int), Char)
--    An alias for a cordinate and char tuple e.g ((1,2),'*') representing a point

type Row = [Point]
--    An alias for a list of points, representing a row e.g
--    [((0,0),'_'),((1,0),'_'),((2,0),'C'),((3,0),'_'),((4,0),'_'),((5,0),'_'),((6,0),'_')]


type Screen = [Row]
--    An alias for a list of a list of rows, simulating a screen
--    [
--    [((0,0),'_'),((1,0),'_'),((2,0),'C'),((3,0),'_'),((4,0),'_'),((5,0),'_'),((6,0),'_')]
--    [((0,1),'_'),((1,1),'_'),((2,1),'S'),((3,1),'I'),((4,1),'_'),((5,1),'_'),((6,1),'_')]
--    [((0,2),'_'),((1,2),'_'),((2,2),'H'),((3,2),'A'),((4,2),'S'),((5,2),'K'),((6,2),'E')]
--    [((0,3),'_'),((1,3),'_'),((2,3),'A'),((3,3),'_'),((4,3),'_'),((5,3),'A'),((6,3),'_')]
--    [((0,4),'_'),((1,4),'_'),((2,4),'R'),((3,4),'_'),((4,4),'_'),((5,4),'_'),((6,4),'B')]
--    [((0,5),'_'),((1,5),'_'),((2,5),'P'),((3,5),'H'),((4,5),'P'),((5,5),'_'),((6,5),'_')]
--    ]


data Cell = Cell (Int, Int) Char deriving (Eq, Ord, Show)
-- A data type + data constructor for a cell e.g Cell (2,0) 'C',



-- Parametrized Grid type, which can be a Grid of any kind
type ParametrizedGrid a = [[a]]

-- A list of strings simulating a grid
grid = [ "__C________R___"
       , "__SI________U__"
       , "__HASKELL____B_"
       , "__A__A_____S__Y"
       , "__R___B___C____"
       , "__PHP____H_____"
       , "____S_LREP_____"
       , "____I__M_Y__L__"
       , "____L_E__T_O___"
       , "_________HB____"
       , "_________O_____"
       , "________CN_____"
       ]

-- Small Grid for testing
play = ["MER", "NIX" ]

-- A list of languages
languages = [ "BASIC"
            , "COBOL"
            , "CSHARP"
            , "HASKELL"
            , "LISP"
            , "PERL"
            , "PHP"
            , "PYTHON"
            , "RUBY"
            , "SCHEME"
            ]

tenBytenScreen :: Cordinates
tenBytenScreen = [[(0,0),(1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0)]
                 ,[(0,1),(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1)]
                 ,[(0,2),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2)]
                 ,[(0,3),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3)]
                 ,[(0,4),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4)]
                 ,[(0,5),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5)]
                 ,[(0,6),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6)]
                 ,[(0,7),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7)]
                 ,[(0,8),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8)]
                 ,[(0,9),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9)]
                 ]
