# Problema de relación de engranajes

Imagina que tu motor de pasos es de 200 pasos por revolución, y necesitas convertirlo en 256 pasos por revolución (una vuelta completa). Esto se puede lograr a través de sofware usando una fórmula, pero lo ideal sería utilizar engranajes. Para ello necesitamos dos engranaje y se calcula de la siguiente manera:  

256 pasos / 200 pasos  

Ahora vamos a simplificar sucesivamente y paramos cuando la fracción no pueda ser entera:  

256/200 = 128/100 = 64/50 = 32/25 (y aquí paramos porque ya no se puede simplificar más aceptando sólo números enteros).  

Esto significa que el engranaje acoplado a la salida debe tener 32 dientes y el engranaje acoplado al motor de pasos debe tener 25 dientes.  

Ahora cuando al motor de pasos le demos 256 pasos el engranaje de salida dará una vuelta exacta completa.  

Si decides utilizar software ten presente que habrá pasos en donde el motor no se moverá para cumplir que queramos (en este ejemplo) dar al motor 256 y en realidad sólo moverse 200.  

La fórmula es la siguiente si usas Arduino:  

tot = round( (float)tot * 0.78125F );  

tot = Pasos totales.  
0.78125 = 200.0 / 256.0  
round = Redondeo al alza.  
