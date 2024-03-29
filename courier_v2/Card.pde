class Card {
  
 // Propietats
 PImage img;
 String title, place, date;
 String section;
 String description;
 
 // Constructors
 
 Card(){
 }
 
 Card(String title, String place, String date, String section, String description){
   this.title = title;
   this.place = place;
   this.date = date;
   this.section = section;
   this.description = description;
 }
 
 Card(String[] info){
   this.title = info[0];
   this.place = info[1];
   this.date = info[2];
   this.section = info[3];
   this.description = info[4];
 }
 
 //Setters
 
 void setImage(PImage img){
   this.img = img;
 }
 
 // Dibuixa la Card
 
 void display(float x, float y, float w, float h, float b){
   
   pushStyle();
   
   // Rectangle inferior
   stroke(0); fill(220);
   rect(x, y, w, h, b/2);
   
   // imatge descriptiva
   float imgW = (w/3) - 2*b;
   float imgH = h - 2*b;
   if(img!=null){
     image(img, x + b, y + b, imgW, imgH);
     noFill(); rect(x + b, y + b, imgW, imgH);
   }
   else {
     fill(50);
     rect(x + b, y + b, imgW, imgH);
   }
   
   // Títol
   fill(0); textSize(24); textAlign(CENTER);
   text(title, x + 2*w/3, y + h/5);
   
   // Lloc i data
   fill(0); textSize(18); textAlign(CENTER);
   text(place+", "+date, x + w/3 + w/6, y + 2*h/5);
   
   // Secció
   fill(0); textSize(18); textAlign(CENTER);
   text(section, x + 2*w/3 + w/6, y + 2*h/5);
   
   // Descripció
   fill(0);textSize(14); textAlign(LEFT);
   text(description, x + w/3 + b, y + 2*h/3 - b, 2*w/3 - b*2, h/4);
   
   
   popStyle();
 }
 
  
}
