module Lib () where

import Text.Show.Functions ()

type Nombre = String
type SuperPoderActivo = Bool
type PoderBasico = String
type SuperPoder = String
type CantidadDeVida = Int

type Personaje = (Nombre , PoderBasico, SuperPoder, SuperPoderActivo ,CantidadDeVida)

bolaEspinosa :: Personaje -> Int
bolaEspinosa unPersonaje = (cantidadDeVida unPersonaje) - 1000 

cantidadDeVida :: Personaje -> Int
cantidadDeVida ( _ , _ , _ , _ , vida) = vida



espina :: Personaje
espina = ("Espina" , "Bola de Espinas" , "Grana de espinas", True , 4800)