function pantografo ( alpha, beta)

  %Definicion de constantes
  l1 = 0.7;
  l2 = 0.3;
  
  %Definición de las matrices de transformacion
  art1 = [cos(alpha), -sin(alpha), 0 l1*cos(alpha); 
          sin(alpha), cos(alpha), 0 l1*sin(alpha);
          0, 0, 1, 0;
          0, 0, 0, 1];
  
  art2 = [cos(beta), -sin(beta), 0 l2*cos(beta); 
          sin(beta), cos(beta), 0 l2*sin(beta);
          0, 0, 1, 0;
          0, 0, 0, 1];      
        
  tcp = [0;0;0;1];
  
  brazo = art1*art2*tcp;
  
  %Creación del espacio de dibujo
    figure; hold on; axis equal;
    axis([-1 1 -1 1]);
  
  %Dibujo del brazo
    %art1
    line([0;l1*art1(1,1)],[0;l1*art1(2,1)])
    %art2
    line([l1*art1(1,1),brazo(1,1)],[l1*art1(2,1),brazo(2,1)])
  lapiz=[brazo(1,1) brazo(2,1)]
endfunction
