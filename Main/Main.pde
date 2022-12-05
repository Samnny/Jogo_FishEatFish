PVector [] peixinhosD = new PVector[5];
PVector [] peixinhosE = new PVector[5];
PVector peixesD, peixesE;
PImage personag, personagE, peixeD, peixeE, peixeMD, peixeME;
PFont fonte;
final int VIVO = 0;
final int MORTO = 1;
final int ESQUERDA = 3;
final int DIREITA = 4;
final int JOGO = 0;
final int CARREGAMENTO = 1;
int estadoPeixe = VIVO;
int ladoPeixe = DIREITA;
int estadoJogo = CARREGAMENTO;
int tempo;
int[] tamanhosP = {10, 20, 30, 40, 50, 60};
int perX, perY, tamX, tamY, pontos;
float d;


void setup(){
  size(600, 700);
  frameRate(10);
  fonte = createFont("atari.ttf", 32);
  textFont(fonte);
  
  perX = 300;
  perY = 10;
  tamX = 10;
  tamY = 5;

  mostraInimigos();
  mostraInimigos2();
  
  personag = loadImage("persoD.png");
  personagE = loadImage("persoE.png");
  peixeD = loadImage("peixe-30.png");
  peixeE = loadImage("peixe-30E.png");
  peixeMD = loadImage("peixeMD.png");
  peixeME = loadImage("peixeME.png");
  
}

void draw(){
  background(#140084);
  textSize(35);
  tempo++;
  MEF();
  organiza(estadoJogo);
}
