module Lib () where

import Text.Show.Functions ()

data Personaje = UnPersonaje { nombre :: String, poderBasico :: String , superPoder :: SuperPoder, vida :: Int } deriving Show
type TipoDeAtaque = String
type SuperPoder = (String,PoderActivo)
type PoderActivo = Bool
type BrawlersActivos = [Personaje]

brawlers :: BrawlersActivos
brawlers = [espina,pamela]

espina :: Personaje
espina = UnPersonaje "Espina" "Bola de Espinas" ("Granada de Espinas",True) 4800

pamela :: Personaje
pamela = UnPersonaje "Pamela" "LLuvia de Tuercas Sanadoras" ("Torreta Curativa",False) 9600 

torretaCurativa :: Personaje -> Personaje
torretaCurativa unPersonaje = unPersonaje { superPoder = ( fst (superPoder unPersonaje) ,True) , vida = vida unPersonaje * 2 }

estanEnLasUltimas :: BrawlersActivos -> [Personaje]
estanEnLasUltimas unosBrawlers = filter (not .vidaMayorQue800) unosBrawlers

vidaMayorQue800 :: Personaje -> Bool
vidaMayorQue800 unPersonaje = vida unPersonaje > 800

bolaEspinosa :: Personaje -> Personaje
bolaEspinosa unPersonaje
 | (not .esMayorQue1000) unPersonaje = unPersonaje {vida = 0}
 | esMayorQue1000 unPersonaje = unPersonaje {vida = vida unPersonaje - 1000}
 | otherwise = unPersonaje

esMayorQue1000 :: Personaje -> Bool
esMayorQue1000 unPersonaje = vida unPersonaje > 1000 
                                                     

--esAtaqueDeDanio :: TipoDeAtaque -> Bool
--esAtaqueDeDanio unTipoDeAtaque = unTipoDeAtaque == "Danio"

--lluviaDeTuercas :: Personaje -> TipoDeAtaque -> Personaje
--lluviaDeTuercas unPersonaje unTipoDeAtaque =
-- | esAtaqueDeDanio unTipoDeAtaque = unPersonaje {vida = vida unPersonaje + 800}
-- | (not.esAtaqueDeDanio) unTipoDeAtaque  = unPersonaje {vida = vida unPersonaje - 2 }
-- | otherwise = unPersonaje
