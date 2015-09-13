# pantografo
Cinematica directa de un pantógrafo xy mediante un script en Octave

##Descripción

Cálculo de la posición del punto final de un pantógrafo xy de dos articulaciones.
La primer articulación, l1 = 0,7m y la segunda l2 = 0,3m.

Mediante el uso de dos matrices de transformación se define el robot, una matriz para cada articulación:

art1 = [cos(alpha), -sin(alpha), 0 l1*cos(alpha); 
          sin(alpha), cos(alpha), 0 l1*sin(alpha);
          0, 0, 1, 0;
          0, 0, 0, 1];
          
art2 = [cos(beta), -sin(beta), 0 l2*cos(beta); 
          sin(beta), cos(beta), 0 l2*sin(beta);
          0, 0, 1, 0;
          0, 0, 0, 1];
          
Donde alpha y beta son los ángulos en radianes de cada articulación respectivamente, variables de entrada del script.

Luego se realiza un dibujo del espacio de trabajo y por último se devuelve la posición del efector en un vector llamado lapiz de 2x1.

##Ejemplo de uso

Supongamos que queremos calcular la poición que tendá el pantógrafo con un ángulo alpha = 45° y beta = 60°, se lo debe invocar:

>>> pantografo(pi/4,pi/3)

Devuelve:
lapiz =

   0.41733   0.78475

y dibuja

![Alt text](http://lisandrolanfranco.com/wp-content/uploads/2015/09/pantografo.png?raw=true "Resultado gráfico")
