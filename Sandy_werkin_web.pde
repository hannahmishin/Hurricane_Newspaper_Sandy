PFont f;              // A variable to hold onto a font
String[] Reuters;    // The array to hold all of the text of Reuters File
String delimiters = " ,.?!;:[] * + ( )  "; //tells the text file to not count these as words
String [] thewordR;  //declare string as a global array
PFont f1;
String[] WashPost;
String[] thewordWP;
String[] thewordNY;
String[] thewordABC;
PFont f2;
String[] NYT;
String[] ABC;
PFont f3;


void setup() {

  size(800, 800);
  frameRate(10);
  f3=loadFont ("KhmerMN-48.vlw");
  f2= loadFont("Osaka-48.vlw");
  f1= loadFont("MinionPro-SemiboldIt-48.vlw");
  f = loadFont( "SansSerif-48.vlw" );
  String ABCText= "http://stu.itp.nyu.edu/~hm825/ICM/data/SandyABC.txt";
  String NYText= "http://stu.itp.nyu.edu/~hm825/ICM/data/SandyNYT.txt";
  String WPText= "http://stu.itp.nyu.edu/~hm825/ICM/data/SandyWashingtonPost.txt";
  String RText = "http://stu.itp.nyu.edu/~hm825/ICM/data/SandyReuterstxt";
  String[] abctext=loadStrings (ABCText);
  String[] nytext= loadStrings(NYText);
  String[] wptext=loadStrings(WPText);
  String[] rtext = loadStrings(RText);
  String everything4= join(abctext, "");
  String everything3= join(nytext, "");
  String everything2= join(wptext, "");
  String everything1 = join(rtext, "" );
  ABC= splitTokens(everything4, delimiters);
  Reuters = splitTokens(everything1, delimiters);
  WashPost = splitTokens(everything2, delimiters);
  NYT= splitTokens(everything3, delimiters);

  //intiliaize length of string array based on length of source string arrays
  thewordABC= new String[ABC.length];
  thewordNY= new String[NYT.length];
  thewordR = new String [Reuters.length];
  thewordWP= new String[WashPost.length];
  for(int counter=0; counter<ABC.length; counter++){
    thewordABC[counter]=ABC[counter];
  }
  for (int counter=0; counter<WashPost.length; counter++){
    thewordWP[counter] = WashPost[counter];
  }
  //intialize the actual values for array
  for (int counter = 0; counter < Reuters.length; counter++) {
    thewordR[counter] = Reuters[counter];
  }
   for (int counter = 0; counter < NYT.length; counter++) {
    thewordNY[counter] = NYT[counter];
  }

}

void draw() {
  background (50);
  

  for (int i = 0; i < Reuters.length-1; i ++ ) {
       println(thewordR[i]);
       textFont (f);
       //stroke(10, 0, 0, 10);
       text (thewordR[i], random(100, 200), 20+i);
         noStroke();
         fill (200, 10);
     
         
    if (thewordR[i].equals("wind")==true) {
   
      textFont(f);
      stroke(255, 200, 100);
      fill(200, 80);
      text(thewordR[i], random(width-i), random(height-i));
    }
     if (thewordR[i].equals("water")==true) {
   
      textFont(f);
      stroke(255, 200, 100);
      fill (200, 80);
      text(thewordR[i], random(width-i), random(height-i));
    }
       if (thewordR[i].equals("storm")==true) {
   
      textFont(f);
     stroke(255, 200, 100);
     fill (200, 80);
      text(thewordR[i], random(width-i), random(height-i));
    }
  }
  for (int i = 0; i < WashPost.length-1; i ++ ) {
       println(thewordWP[i]);
       textFont (f1);
       //stroke(10, 0, 0, 10);
       text (thewordWP[i], random(200, 400), 20+i);
         noStroke();
         fill (204, 153, 204, 10);

         
    if (thewordWP[i].equals("wind")==true) {
      textFont(f1);
      stroke(255, 200, 100);
      fill (204, 153, 204, 80);
      text(thewordWP[i], random(width-i), random(height-i));
    }
     if (thewordWP[i].equals("water")==true) {
   
      textFont(f1);
      stroke(255, 200, 100);
        fill (204, 153, 204, 80);
      text(thewordWP[i], random(width-i), random(height-i));
    }
       if (thewordWP[i].equals("storm")==true) {
   
      textFont(f1);
     stroke(255, 200, 100);
       fill (204, 153, 204, 80);
      text(thewordWP[i], random(width-i), random(height-i));
    }
}
  for (int i = 0; i < NYT.length-1; i ++ ) {
       println(thewordNY[i]);
       textFont (f2);
       //stroke(10, 0, 0, 10);
       text (thewordNY[i], random(300, 500), 20+i);
         noStroke();
         fill (150, 153, 102, 10);

         
    if (thewordNY[i].equals("wind")==true) {
      textFont(f2);
      stroke(255, 200, 100);
      fill (150, 153, 102, 80);
      text(thewordNY[i], random(width-i), random(height-i));
    }
     if (thewordNY[i].equals("water")==true) {
   
      textFont(f2);
      stroke(255, 200, 100);
        fill (150, 153, 102, 80);
      text(thewordNY[i], random(width-i), random(height-i));
    }
       if (thewordNY[i].equals("storm")==true) {
   
      textFont(f2);
     stroke(255, 200, 100);
       fill (100, 120, 160, 80);
      text(thewordNY[i], random(width-i), random(height-i));
    }
}

for (int i = 0; i < ABC.length-1; i ++ ) {
       println(thewordABC[i]);
       textFont (f3);
       //stroke(10, 0, 0, 10);
       text (thewordABC[i], random(400, 500), 20+i);
         noStroke();
         fill (102, 153, 153, 10);

if (thewordABC[i].equals("wind")==true) {
      textFont(f2);
      stroke(255, 200, 100);
      fill (102, 153, 153, 80);
      text(thewordABC[i], random(width-i), random(height-i));
    }
     if (thewordABC[i].equals("water")==true) {
   
      textFont(f2);
      stroke(255, 200, 100);
        fill (102, 153, 153, 80);
      text(thewordABC[i], random(width-i), random(height-i));
    }
       if (thewordABC[i].equals("storm")==true) {
   
      textFont(f2);
     stroke(255, 200, 100);
       fill (102, 153, 153, 80);
      text(thewordABC[i], random(width-i), random(height-i));
    }
}


     
}

