void mousePressed(){
  
  if(pantalla==PANTALLA.INICIO){
    cercador.isPressed();
    c.checkButtons();
  }
  
  if(b1.mouseOverButton() && b1.enabled){
    bgColor = color(255, 0, 0);
    pantalla = PANTALLA.INICIO;
  }
  
  if(rb1.mouseOverButton() && rb1.enabled){
    bgColor = color(0);
    rb1.setEnabled(false);
    rb2.setEnabled(true);
    rb3.setEnabled(true);
    pantalla = PANTALLA.LOG_IN;
  }
  
  else if(rb2.mouseOverButton() && rb2.enabled){
    bgColor = color(255);
    rb2.setEnabled(false);
    rb1.setEnabled(true);
    rb3.setEnabled(true);
    pantalla = PANTALLA.ADD_LISTA;
  }
  else if(rb3.mouseOverButton() && rb3.enabled){
    bgColor = color(255);
    rb3.setEnabled(false);
    rb2.setEnabled(true);
    rb1.setEnabled(true);
  }
  else if(logIn.mouseOverButton() && logIn.enabled){
    bgColor = color(255, 0, 0);
    if(comprovaLogin()){
      pantalla = PANTALLA.INICIO;
    }
  }
  else if(crearLista.mouseOverButton() && crearLista.enabled){
    bgColor = color(255);
    pantalla = PANTALLA.INICIO;
  }
  
  if(genere.mouseOverSelect() && genere.enabled){
    if(!genere.collapsed){
      genere.update();    // Fer acció amb valor
    }
    genere.toggle();        // Plegar o desplegar
  }
  
  
  userText.isPressed();
  passwordText.isPressed();
  addNameList.isPressed();
  
  addNameMovie.isPressed();
  addDescription.isPressed();
  addNameDirector.isPressed();
  
  updateCursor();
  
  anys.update();
  
}

// Modifica el cursor
void updateCursor(){
  
  if((b1.mouseOverButton() && b1.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
  if((rb1.mouseOverButton() && rb1.enabled)||
     (rb2.mouseOverButton() && rb2.enabled)||
     (rb3.mouseOverButton() && rb3.enabled)){
     cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
  if(anys.mouseOverButtons()){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
  if(c.checkCursor()){
    cursor(HAND);
  }
  else {
    cursor(ARROW);
  }
  
}

void keyPressed() {
    if(pantalla == PANTALLA.LOG_IN){
       userText.keyPressed(key, (int)keyCode);
       passwordText.keyPressed(key, (int)keyCode);
    }
    else if(pantalla == PANTALLA.INICIO){
       cercador.keyPressed(key, (int)keyCode);
       if (keyCode==LEFT){
           c.prev();
       }
       else if(keyCode==RIGHT){
           c.next();
       }
    }
    else if(pantalla == PANTALLA.ADD_LISTA){
       addNameList.keyPressed(key, (int)keyCode);
       addDescription.keyPressed(key, (int)keyCode);
    }
    else if(pantalla == PANTALLA.ADD_MOVIE){
       addNameMovie.keyPressed(key, (int)keyCode);
       addNameDirector.keyPressed(key, (int)keyCode);
    }
       comprovaLogin();
       
    
}

// Comprova si el login és correcte
boolean comprovaLogin() {
   if (userText.text.equals("admin") && 
       passwordText.text.equals("12345")) {
      return true;
   } else {
      return false;
   }
}
