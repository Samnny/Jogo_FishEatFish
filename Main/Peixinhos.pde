void mostraInimigos() {
  for (int i = 0; i < peixinhosD.length; i++) {
    int num = int(random(0, 6));
    peixesD = new PVector(-10, random(0, 450), tamanhosP[num]);
    peixinhosD[i] = peixesD;
  }
}

void geraInimigos() {
  for (int i = 0; i < peixinhosD.length; i++) {
    noStroke();
    fill(180, 10, 10);
    image(peixeD, peixinhosD[i].x, peixinhosD[i].y, peixinhosD[i].z, peixinhosD[i].z/2);
  }

  for (int i = 0; i < peixinhosD.length; i++) {
    if(peixinhosD[i].z == 10)
    peixinhosD[i].x += 6;
    else if(peixinhosD[i].z == 20)
    peixinhosD[i].x += 5;
    else if(peixinhosD[i].z == 30)
    peixinhosD[i].x += 4;
    else if(peixinhosD[i].z == 40)
    peixinhosD[i].x += 3;
    else if(peixinhosD[i].z == 50)
    peixinhosD[i].x += 2;
    else if(peixinhosD[i].z == 60)
    peixinhosD[i].x += 1;
  }
}

void limites2() {
  for (int i = 0; i < peixinhosD.length; i++) {
    if (peixinhosD[i].x >= 600) {
      int num = int(random(0, 6));
      peixinhosD[i].x = -10;
      peixinhosD[i].y = random(0, 450);
      peixinhosD[i].z = tamanhosP[num];
    }
  }
}

void colisao2() {

  for (int i = 0; i < peixinhosD.length; i++) {
    boolean teste = verificaColisao(perX, perY, tamX, tamY, peixinhosD[i].x, peixinhosD[i].y, peixinhosD[i].z, peixinhosD[i].z/2);
    
    if(teste){
      if(peixinhosD[i].z > tamX){
        println("perdeu");
        estadoPeixe = MORTO;
      }else{
        estadoPeixe = VIVO;
        println("colidiu");
        pontos+=peixinhosD[i].z;
        int num = int(random(0, 6));
        peixinhosD[i].x = -10;
        peixinhosD[i].y = random(0, 450);
        peixinhosD[i].z = tamanhosP[num];
      }
    } 
    
  }
}

boolean verificaColisao(float xPrimeiro, float yPrimeiro, float lPrimeiro, float aPrimeiro, float xSegundo, float ySegundo, float lSegundo, float aSegundo ) {
  boolean resposta = false;

  if ( xPrimeiro+lPrimeiro >= xSegundo && xPrimeiro+lPrimeiro <= xSegundo+lSegundo && 
    yPrimeiro >= ySegundo && yPrimeiro <= ySegundo+aSegundo ) {
    resposta = true;
  } else if ( xPrimeiro <= xSegundo+lSegundo && xPrimeiro >= xSegundo &&
    yPrimeiro >= ySegundo && yPrimeiro <= ySegundo+aSegundo ) {
    resposta = true;
  } else if ( xPrimeiro <= xSegundo+lSegundo && xPrimeiro >= xSegundo &&
    yPrimeiro+aPrimeiro >= ySegundo && yPrimeiro+aPrimeiro <= ySegundo+aSegundo ) {
    resposta = true;
  } else if ( xPrimeiro+lPrimeiro >= xSegundo && xPrimeiro+lPrimeiro <= xSegundo+lSegundo &&
    yPrimeiro+aPrimeiro >= ySegundo && yPrimeiro+aPrimeiro <= ySegundo+aSegundo ) {
    resposta = true;
  }

  return resposta;
}

// ESQUERDA 

void mostraInimigos2() {
  for (int i = 0; i < peixinhosE.length; i++) {
    int num = int(random(0, 6));
    peixesE = new PVector(610, random(0, 500), tamanhosP[num]);
    peixinhosE[i] = peixesE;
  }
}

void geraInimigos2() {
  for (int i = 0; i < peixinhosE.length; i++) {
    noStroke();
    fill(180, 10, 10);
    image(peixeE, peixinhosE[i].x, peixinhosE[i].y, peixinhosE[i].z, peixinhosE[i].z/2);
  }

  for (int i = 0; i < peixinhosE.length; i++) {
      if(peixinhosE[i].z == 10)
      peixinhosE[i].x -= 6;
      else if(peixinhosE[i].z == 20)
      peixinhosE[i].x -= 5;
      else if(peixinhosE[i].z == 30)
      peixinhosE[i].x -= 4;
      else if(peixinhosE[i].z == 40)
      peixinhosE[i].x -= 3;
      else if(peixinhosE[i].z == 50)
      peixinhosE[i].x -= 2;
      else if(peixinhosE[i].z == 60)
      peixinhosE[i].x -= 1;
  }
}

void limites3() {
  for (int i = 0; i < peixinhosE.length; i++) {
    if (peixinhosE[i].x <= 0) {
      int num = int(random(0, 6));
      peixinhosE[i].x = 610;
      peixinhosE[i].y = random(0, 450);
      peixinhosE[i].z = tamanhosP[num];
    }
  }
}

void colisao3() {
  for (int i = 0; i < peixinhosE.length; i++) {
    boolean teste = verificaColisao(perX, perY, tamX, tamY, peixinhosE[i].x, peixinhosE[i].y, peixinhosE[i].z, peixinhosE[i].z/2);
    
    if(teste){
      if(peixinhosE[i].z > tamX){
        println("perdeu");
        estadoPeixe = MORTO;
      }else{
        println("colidiu");
        pontos+=peixinhosE[i].z;
        int num = int(random(0, 6));
        peixinhosE[i].x = 610;
        peixinhosE[i].y = random(0, 450);
        peixinhosE[i].z = tamanhosP[num];
      }
    } 
    
     
    }
  }
