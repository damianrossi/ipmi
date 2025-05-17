/* ------------------
|    Rossi Damián    |
|  Legajo: 120364/6  |
|      Comisión 3    |
---------------------*/

/*Inicio código TP2 - Introducción a la programación para medios interactivos */

PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage inicio;
PImage reinicio;
PFont texto1, texto2;
int pantalla = 0;
int semuevaeltexto=0;
int segundos = 0;
int velocidad=1;
int tiempoPantalla=10;
int posx = 440;
int posy = 380;
int largo = 200;
int alto = 100;
int activo=0;
   

void setup ()
{
  size(640,480);
  background (0);
  fill(255);
  texto1= loadFont ( "Arial-ItalicMT-48.vlw");
  texto2= loadFont ( "BodoniBT-BookItalic-48.vlw");
  textFont( texto1,20);
  imagen1 = loadImage ("pantalla1.png");
  imagen2 = loadImage ("pantalla2.png");
  imagen3 = loadImage ("pantalla3.png");
  inicio = loadImage ("inicio.png");
  reinicio = loadImage ("reinicio.png");
}

void draw ()
{
  
   if(pantalla==0)
    {
      pushStyle();
      background (0);
     textFont( texto2,30);
      text("Rossi Damián",150,150);
      text("Legajo: 120364/6",150,200);
      text("Comisión 3",150,250);
     popStyle();
     
     
    }
  
   if (pantalla==1)
     { 
       image (imagen1, 0,0,640,480);
       text("Esta obra fue una de las siete encargadas por Stanford Health Care\npara revitalizar el nuevo campus y favorecer la recuperación de\nlos pacientes mediante las propiedades restauradoras del arte.", 0,semuevaeltexto-195 );
     }
     
   if (pantalla == 2) 
     {
       image (imagen2, 0,0,640,480);
       text( " Diseñada por Raphael Viñoly, en Stanford, California.\n Utilizan un software personalizado de Leo Villareal,\n para emitir un espectro de luz aleatorio \n que varía en velocidad, color y opacidad. ", 500-semuevaeltexto, 400);
     }
     
   if (pantalla == 3) 
     {
       image (imagen3, 0,0,640,480);
       text( "Esta composición de luz en constante evolución explora \n la compulsión del público por reconocer patrones y asignar significado, \n transformando el área en un espacio de contemplación tranquila.",0,480-semuevaeltexto); 
   }

   if (activo==1)
     {
       if (frameCount % velocidad == 0)
         {
           if(semuevaeltexto<(200+(pantalla*82))) {
            semuevaeltexto=semuevaeltexto+1;
           }
         }
       
       if(frameCount % 60 == 0)
         {
            segundos = segundos + 1;
            if (segundos >tiempoPantalla)
               {
                 if (pantalla != 3) 
                   {
                      pantalla = pantalla + 1;
                      segundos=0;
                      semuevaeltexto=0;
                   }
               }
          }
       }
    
    if ((pantalla==0)&&(activo==0))
      {
        image (inicio, posx,posy,largo,alto);
      }
     
    if ((pantalla==3)&&(segundos>tiempoPantalla))
       {
         image (reinicio, posx,posy,largo,alto);
       }     
}


void mousePressed() 
{
    if ((mouseX>posx)&&(mouseX<posx+largo)&&(mouseY >posy) && (mouseY<posy+alto&& mousePressed))
      {
        if ((activo==1)&&(pantalla==3))
          {
            activo=0;
            pantalla=0;
            semuevaeltexto=0;
            segundos=0;
          }else 
          { 
            activo=1;
            pantalla=1;
          }
       }
}


/*Fin código TP2 - Introducción a la programación para medios interactivos */
