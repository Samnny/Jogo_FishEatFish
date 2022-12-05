void carregamento(){
  fill(0);
  rect(0, 0, 600, 700);
  fill(255);
  textSize(35);
  text("FISH EAT FISH", 80, 250);
  textSize(15);
  if(tempo > 95){
    text("Start!", 250, 450);
  }else if(tempo > 85){
    text("1...", 250, 450);
  }else if(tempo > 65){
    text("2...", 250, 450);
  }else if(tempo > 45){
    text("Começa em 3...", 200, 450);
  }else if(tempo > 10){
    text("Carregando...", 200, 450);
  }
  //text("Carregando...", 200, 450);
}

void MEF(){
   if (tempo > 100) {
      estadoJogo = JOGO;
  }else{
    estadoJogo = CARREGAMENTO;
  
  }
}

void organiza(int estado){
  if(estado == JOGO){
    MEFpersonagem(estadoPeixe, ladoPeixe);
    limitePersonagem();
    geraInimigos();
    geraInimigos2();
  
    limites2();
    limites3();
    
    colisao2();
    colisao3();
    pontuacao();
  }else if (estado == CARREGAMENTO){
    carregamento();
  }
}
