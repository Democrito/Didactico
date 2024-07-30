# Problema de relación de engranajes

Imagina que tu motor de pasos es de 200 pulsos por revolución, y necesitas que cuando dé 256 pulsos por revolución sea una vuelta completa. Para ello necesitamos un piñón y un engranaje para lograrlo. Se calcula de la siguiente manera:

Queremos que los 256 pulsos se correspondan con una vuelta completa. Entonces, la relación de transmisión debe convertir los 256 pulsos en los 200 pulsos necesarios para una vuelta completa del motor de pasos:

256 pulsos / 200 pulsos

Ahora vamos a simplificar paso a paso y paramos cuando la fracción no pueda ser entera:

256/200 = 128/100 = 64/50 = 32/25 (y aquí paramos porque ya no se puede simplificar más).

Esto significa que el engranaje acoplado a la salida debe tener 32 dientes y el engranaje acoplado al motor de pasos debe tener 25 dientes.

Ahora, cuando al motor de pasos le demos 256 pulsos, el engranaje de salida dará una vuelta exacta completa.
