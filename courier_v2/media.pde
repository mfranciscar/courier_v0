PFont[] fonts;
color[] colors;

// Estableix les fonts de l'App
void setFonts(){
    this.fonts = new PFont[3];
    this.fonts[0] = createFont("Just Another Courier.ttf", midaLogo);
    this.fonts[1] = createFont("Sono-ExtraBold.ttf", midaTitol);
    this.fonts[2] = createFont("Sono-Medium.ttf", midaParagraf);
    
}
  
  // Getter del número de fonts
  int getNumFonts(){
    return this.fonts.length;
  }
  
  // Getter de la font primaria
  PFont getFirstFont(){
    return  this.fonts[0];
  }
  
  // Getter del font secundaria
  PFont getSecondFont(){
    return  this.fonts[1];
  }
  
  // Getter de la font i-èssima
  PFont getFontAt(int i){
    return this.fonts[i];
  }
  
  
  // Dibuixa les font de l'App
  void displayFonts(float x, float y, float h){
    pushStyle();     
      for(int i=0; i<getNumFonts(); i++){
        fill(0); stroke(0); strokeWeight(3);
        textFont(getFontAt(i));
        text("Tipografia "+i, x, y + i*h);
      }
    popStyle();
  }
  
// Estableix colors de l'App
void setColors(){
    this.colors = new color[5];
    this.colors[0] = color(#562C2C);
    this.colors[1] = color(#F2542D);
    this.colors[2] = color(#F4DDB8);
    this.colors[3] = color(#0E9594);
    this.colors[4] = color(#127475);
}
  
  // Getter del número de colors
  int getNumColors(){
    return this.colors.length;
  }
  
  // Getter del color primari
  color getFirstColor(){
    return  this.colors[0];
  }
  
  // Getter del color secundari
  color getSecondColor(){
    return  this.colors[1];
  }
  
  // Getter del color terciari
  color getThirdColor(){
    return  this.colors[2];
  }
  
  // Getter del color i-èssim
  color getColorAt(int i){
    return this.colors[i];
  }
  
  
  // Dibuixa paleta de colors
  void displayColors(float x, float y, float w){
    pushStyle();
      //Llegenda
      fill(0); textAlign(LEFT); textSize(36);
      text("Colors:", x, y-10);
      
      // Paleta de colors
      float wc = w / getNumColors();
      for(int i=0; i<getNumColors(); i++){
        fill(getColorAt(i)); stroke(0); strokeWeight(3);
        rect(x + i*wc, y, wc, wc);
      }
    popStyle();
  }
  
