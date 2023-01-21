TextField userText, passwordText, cercador;
TextField addNameList, addNameMovie, addNameDirector;
TextArea addDescription;

void dibujaPantallaLogIn(){
  
  fill (getFirstColor());
  rect(width/2 - 300, height/2 - 150, 600, 400, 10);
  image(icona1, width/2, height/2-60, 90, 90);
  
  textFont(getFontAt(1)); fill(getThirdColor()); textSize(24); textAlign(LEFT);
  text("USUARIO:", width/2-250, height/2+15);
  text("CONTRASEÑA:", width/2-250, height/2+105);
  
  if(pantalla == PANTALLA.LOG_IN){
    userText.display();
    passwordText.display();
    logIn.display();
    textSize(16); fill(getFirstColor()); textAlign(CENTER);
    text("INICIAR SESIÓN", width/2, 590);
    userText.isPressed();
    passwordText.isPressed();
  }
  
}


void dibujaPantallaInicio(){
  
  if(pantalla == PANTALLA.INICIO){
    cercador.display();
    c.display();
    updateCursor();
  }
  
}

void dibujaPantallaAddLista(){
  if(pantalla == PANTALLA.ADD_LISTA){
    pushStyle();
    
    println(mouseX, mouseY);
    rectMode(CENTER);
    fill(getFirstColor());
    rect(width/2, height/2+50, 800, 400, 20);
    fill(getThirdColor()); textFont(getFontAt(1)); textSize(20); textAlign(LEFT);
    text("NUEVA LISTA", width/2, 290);
    text("DESCRIPCIÓN (opcional)", width/2, 390);
    crearLista.display();
    addNameList.display();
    addDescription.display();
    addNameList.isPressed();
    addDescription.isPressed();
    fill(getFirstColor()); textFont(getFontAt(1)); textSize(18); textAlign(LEFT);
    text("Crear lista",width/2+58, height/2+205);
    fill(getThirdColor());
    rectMode(LEFT);
    rect(330, 280, 570, 580, 10);
    fill(0); textSize(18); textFont(getFontAt(2));
    text("(foto)", 350, 320);
    
    popStyle();
  }
}

void dibujaPantallaAddMovie(){
  if(pantalla == PANTALLA.ADD_MOVIE){
    pushStyle();
    
    rectMode(CENTER);
    fill(getFirstColor());
    rect(width/2, height/2+50, 800, 400, 20);
    
    crearMovie.display();
    fill(getFirstColor()); textFont(getFontAt(1)); textSize(18); textAlign(LEFT);
    text("Crear película",width/2+42, height/2+205);
    
    fill(getThirdColor()); textFont(getFontAt(1)); textSize(20); textAlign(LEFT);
    text("TÍTULO", width/2-50, 280);
    addNameMovie.display();
    text("DIRECTOR:", width/2-50, 360);
    text("AÑO:", width/2-50, height/2+85);
    addNameDirector.display();
    text("GÉNERO:", width/2-50, height/2+140);
    
    anys.display();
    genere.display();
    updateCursor();
    popStyle();
    
    rectMode(LEFT);
    rect(330, 280, 570, 580, 10);
    fill(0); textSize(18); textFont(getFontAt(2));
    text("(foto)", 390, 320);
    
  }
}

void dibujaPantallaMovieCard(){
  if(pantalla == PANTALLA.MOVIE_CARD){
    pushStyle();
    
    rectMode(CENTER);
    fill(getFirstColor());
    rect(width/2, height/2+50, 800, 400, 20);
    
    crearMovie.display();
    fill(getFirstColor()); textFont(getFontAt(1)); textSize(18); textAlign(LEFT);
    text("Crear película",width/2+42, height/2+205);
    
    fill(getThirdColor()); textFont(getFontAt(1)); textSize(20); textAlign(LEFT);
    text("TÍTULO", width/2-50, 280);
    addNameMovie.display();
    text("DIRECTOR:", width/2-50, 360);
    text("AÑO:", width/2-50, height/2+85);
    addNameDirector.display();
    text("GÉNERO:", width/2-50, height/2+140);
    
    anys.display();
    genere.display();
    updateCursor();
    popStyle();
    
    rectMode(LEFT);
    rect(330, 280, 570, 580, 10);
    fill(0); textSize(18); textFont(getFontAt(2));
    text("(foto)", 390, 320);
    
  }
}
