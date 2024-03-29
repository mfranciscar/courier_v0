Button b1;
RoundButton rb1, rb2, rb3;
SquareButton logIn, crearLista, crearMovie;
color bgColor = 0;
PImage icona1, icona2, icona3, icona4;
Counter anys;
PImage iconaMes, iconaMenys;
Select genere;
String[] selectValues = {"Acción", "Aventuras", "Ciencia ficción", "Comedia", "Drama", "Fantasía", "Musical", "Suspense", "Terror"};
Carrousel c;

String[] noms = {"seven.png", "death_proof.png", "fight_club.png",
                 "godfather.png", "schindlers_list.png", "sexto_sentido.png",
                 "sleepers.png"};

int n = 0;
boolean logged = false;

CheckBoxStarList cbl;
String[] imgs = {"starON.png", "starOFF.png"};

void setGUI(){
  
  pushStyle();
  
  icona1 = loadImage("log_in.png");
  icona2 = loadImage("add.png");
  icona3 = loadImage("search.png");
  icona4 = loadImage("busca.png");
  
  b1 = new Button("C", 0, 0, 120, 120);
  rb1 = new RoundButton(icona1, 1300, 60, 35);
  rb2 = new RoundButton(icona2, 1200, 60, 35);
  rb3 = new RoundButton(icona3, 1100, 60, 35);
  
  userText = new TextField(width/2-253, height/2+25, 485, 35);
  passwordText = new TextField(width/2-253, height/2+115, 485, 35);
  cercador = new TextField(160, 40, 800, 45);
  
  logIn = new SquareButton("Iniciar sesión", width/2, height/2+200, 200, 35);
  
  addNameList = new TextField(width/2-60, 300, 380, 35);
  addDescription = new TextArea(width/2-60, 420, 380, 100, 35, 3);
  crearLista = new SquareButton("Crear lista", width/2+120, height/2+200, 200, 35);
  
  iconaMes = loadImage("mes.png");
  iconaMenys = loadImage("menys.png");
  addNameMovie = new TextField(width/2-60, 260, 380, 35);
  anys = new Counter(iconaMes, iconaMenys, width/2, height/2+115, counterW, counterH);
  crearMovie = new SquareButton("Añadir película", width/2+120, height/2+220, 200, 35);
  addNameDirector = new TextField(width/2-60, height/2-50, 380, 35);
  addActores = new TextField(width/2-60, height/2+25, 380, 35);
  
  genere = new Select(selectValues, width/2+50, height/2+145, selectW, selectH);
  
  c = new Carrousel(width/2-565, height/2+30, 1100, 380, 4);
  c.setImages(noms);
  c.setButtons("bPrev.png", "bNext.png");
  
  cbl = new CheckBoxStarList(5, imgs, 100, height/2 - 100, 100, 100);
  cbl.setCheckBoxStars(3);
  
  popStyle();
  
}

void drawGUI(){
  
  // Zona Principal
  fill(getThirdColor());
  rect(marginH, marginV, width, height);
  
  // Zona Banner
  fill(getFirstColor());
  rect(0, 0, bannerWidth, bannerHeight);
  fill(0);
  textFont(getFontAt(2));
  b1.display();
  rb1.display();
  rb2.display();
  rb3.display();
  updateCursor();
}
