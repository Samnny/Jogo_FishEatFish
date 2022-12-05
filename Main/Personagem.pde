void MEFpersonagem(int estado, int lado){
  fill(150, 10, 160);
  //circle(perX, perY, tamX);
  if(pontos > 500){
    tamX = 60;
    tamY = 30;
  }else if(pontos > 400){
    tamX = 50;
    tamY = 25;
  }else if(pontos > 300){
    tamX = 40;
    tamY = 20;
  }else if(pontos > 200){
    tamX = 30;
    tamY = 15;
  }else if(pontos > 40){
    tamX = 20;
    tamY = 10;
  }
  
  if(estado == VIVO){
    if(lado == DIREITA){
      image(personag, perX, perY, tamX, tamY);
    }else if(lado == ESQUERDA){
      image(personagE, perX, perY, tamX, tamY);
    }
  }else{
    if(lado == DIREITA){
      image(peixeMD, perX, perY, tamX, tamY);
    }else if(lado == ESQUERDA){
      image(peixeME, perX, perY, tamX, tamY);
    }
    fill(150, 10, 10);
    text("GAME OVER", 150, 300);
  }
  
  
  if(keyPressed){
    if(keyCode == UP) perY -= 10;
    if(keyCode == DOWN) perY += 10;
    if(keyCode == RIGHT){
      perX += 10;
      ladoPeixe = DIREITA;
    } 
    if(keyCode == LEFT){
      perX -= 10;
      ladoPeixe= ESQUERDA;
    } 
  }
}

void limitePersonagem(){
  if(perY < 0) perY = 5;
  if(perY > 500) perY = 485;
  if(perX < 0) perX = 5;
  if(perX > 600) perX = 585;
}

void pontuacao(){
  
  fill(0);
  rect(0, 500, 600, 200);
  fill(255);
  text("pontos: "+pontos, 150, 600);
  
}
