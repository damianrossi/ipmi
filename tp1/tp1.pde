PImage autoretrato;
 color cielo, nube, tierra,piel,pelo,boca,labio;
void setup(){
  size (800, 400);
  autoretrato = loadImage ("dr.jpg");
   cielo = color(92, 158, 208);
   nube= color(199,217,237);
   tierra= color(143,139,127);
   piel=color(178,157,151);
   pelo=color(42, 40, 41);
   boca=color(100,29,22);
   labio=color(174,115,108);

  }
    
void draw (){
    background (255);
   
    image (autoretrato, 0, 0, 400, 400 );
     circle(mouseX, mouseY, 1);
     println(mouseX,mouseY);
stroke(3);
noFill();




     translate(400,0);
 
     noStroke();
     fill(cielo);
     rect(0,0,400,400);//cielo
     fill(nube);
     quad(0, 192, 400, 119, 400, 180, 0, 232); //Nuve que pasa por atras de la cabeza
     arc(0,0,300,200,0,PI/2); //Nuve del borde izquierdo
     quad(266, 252, 400, 236, 400, 254, 266, 270); //nuve a la altura de la oreja
     quad(279, 296, 400, 289, 400,301, 279, 308); //nuve del medio
     quad(178, 318, 400, 313, 400,340, 271, 340); //nuve baja
     fill(143,139,127);
     rect(0,336,400,64);//tierra
     
     fill(178,157,151);
     rotate(radians(-10));
     arc(20,400,200,90,radians(209),radians(300)); //Hombro izquierdo
     rotate(radians(10));
     rotate(radians(15));
     arc(420,290,200,90,radians(200),radians(420)); //Hombro derecho
     rotate(radians(-15));
     rect(143,313,140,100);
     rect(0,384,50,30);
     fill(0);
     quad(33, 353, 146, 311, 154,400, 30, 400); // hombro izquierdo
     quad(280, 314, 340, 344, 340,400, 245, 400); // hombro izquierdo

     //fill(205, 166, 149);
     fill(piel);
     ellipse(126,244,24,56); //Oreja izquierda
     ellipse(293,244,24,56); //Oreja derecha
     //quad(131, 215, 114, 211, 120, 267, 132, 269); // Intento de oreja
     stroke(1); //stroke 1 para que se note el contorno de la barba en la cara.
     ellipse(212,238,164,288);  //Cara 
     fill(pelo);
     noStroke();
     // Inicio Barba//
     arc(212,238,164,288,PI/2,radians(170),OPEN);
     arc(212,238,164,288,radians(10),PI/2,OPEN);
     arc(212,238,164,288,radians(50),radians(40+90),CHORD);

     rect(171,305,10,50);
     rect(241,310,10,50);
     

     //Fin Barba//
     //Inicio Pelo//
     arc(212,238,164,288,radians(180),radians(240),OPEN);
     arc(212,238,164,288,radians(300),radians(360),OPEN);
     arc(212,238,164,288,radians(200),radians(280),OPEN);
     arc(212,238,164,288,radians(280),radians(340),OPEN);
     rect(165, 92, 104, 50, 0, 280, 0, 20);
     ellipse(179,223,30,10); //ojo izquierdo
     ellipse(255,227,30,10); // ojo derecho
     quad(168, 202, 200, 206, 197, 211, 167, 211); //ceja izquierda
     quad(168, 202, 157, 213,157,214,168,211 );
     quad(239, 210, 272, 209, 270, 216, 241, 215); //ceja derecha
     quad(271, 209,282, 216, 280, 221,269, 216 ); 
     noFill();
     stroke(3);
      arc(206,270,24,20,radians(92),radians(220)); 
      //Inicio Nariz//
      arc(222,272,24,20,radians(330),radians(450));
      arc(214,270,25,25,radians(45),radians(150));
      line(209,220,205,250);
      
      //line(229,220,225,250);
    //Fin Nariz//
     fill(pelo);
     noStroke();
     circle(170,240,2); //Lunar izuierdo
     circle(255,247,3); //Lunar derecho
     circle(172,298,5);// Lunar del labio
     rotate(radians(5)); //Rotar para torcer la barba
     arc(237,290,80,30,radians(160),radians(380)); //bigote
     triangle(222,300,260,300,240,320); //barba triangulito
     rotate(radians(5)); //Rotar para torcer la boca
     
     fill(labio);
     arc(265,270,50,25,radians(0),radians(180)); //labio de abajo
     arc(265,270,50,10,radians(180),radians(360)); //labio de arriba
     triangle(245,268,253,260,272,272); //labio izquierdo
     triangle(260,268,275,260,285,272); //labio derecho
     rotate(radians(-10));
     
     fill(boca);
     arc(232,166,300,300,radians(85),radians(109),CHORD); //linea de la boca
     noFill();
     stroke(150);
     strokeWeight(2);
     arc(170,141,40,90,radians(270),radians(360));
//     arc(175,141,40,90,radians(270),radians(360));
     arc(180,141,40,90,radians(270),radians(360));
//    arc(185,141,40,90,radians(270),radians(360));
    arc(190,141,40,90,radians(270),radians(360));
//    arc(195,141,40,90,radians(270),radians(360));
     arc(200,141,40,90,radians(270),radians(360));
//     arc(205,141,40,90,radians(270),radians(360));
     arc(210,141,40,90,radians(270),radians(360));
//     arc(215,141,40,90,radians(270),radians(360));
     arc(220,141,40,90,radians(270),radians(360));
//     arc(225,141,40,90,radians(270),radians(360));
     arc(230,141,40,90,radians(270),radians(360));
 //    arc(235,141,40,90,radians(270),radians(360));

     
     
}
