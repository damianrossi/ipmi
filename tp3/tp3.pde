/* -----------------------------------
|    Rossi Damián                     |
|  Legajo: 120364/6                   |
|      Comisión 3                     |
| video: https://youtu.be/S0zmxRybS8o |
--------------------------------------*/

/*Inicio código TP3 - Introducción a la programación para medios interactivos */

PImage cuadrados;
int numCuadrados = 12;
float tamano=400*0.8;
float angulo = -12;
color col1=color(0);
color col2=color(255);
float centroX,centroY;
int cuadrante=1;


void setup() {
  size(800, 400);
  cuadrados=loadImage("cuadrados.jpg");
  rectMode(CENTER);
  centroX=width /4*3;
  centroY=height / 2;
}

void draw() {
background(255);
image (cuadrados, 0, 0, 400, 400 );

cuadrados(numCuadrados,tamano,angulo,col1,col2,centroX,centroY,cuadrante);

}

void keyPressed() {

 teclaPresionada();
}
 void mousePressed() 
 { 
   cuadrante=cuadrante(cuadrante); //devuelve el cuadrante donde se encuentra. 
   
 }
 
 /*Fin código TP3 - Introducción a la programación para medios interactivos */
