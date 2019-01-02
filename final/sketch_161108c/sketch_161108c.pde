String title = "AVERAGE BUDGET AND PROFIT IN MOVIE GENRES";
PFont myFont;

String[] lines; 
String[] data;
String[] movieType;
int[] gross;   
String[] numbers = {"2.5M", "5M", "7.5M", "1Bn"};
boolean grossVisible = false, budgetVisible = false, averageVisible = false; // booleans to check wether the buttons are pressed
long sumAction = 0, sumAdventure = 0, sumAnimation = 0, sumComedy = 0, sumCrime = 0, sumDocumentary = 0, sumDrama = 0, sumFamily = 0, sumFantasy = 0, sumHistory = 0, sumHorror = 0, sumMusical = 0, sumMystery = 0, sumRomance = 0, sumSciFi = 0, sumSport = 0, sumThriller =0, sumWar = 0, sumWestern =0;

//double values which will be used to store the sum of the budget for each movie matched with their genre ofc
long sumActionBudget = 0, sumAdventureBudget = 0, sumAnimationBudget = 0, sumComedyBudget = 0, sumCrimeBudget = 0, sumDocumentaryBudget = 0, sumDramaBudget = 0, sumFamilyBudget = 0, sumFantasyBudget = 0, sumHistoryBudget = 0, sumHorrorBudget = 0, sumMusicalBudget = 0, sumMysteryBudget = 0, sumRomanceBudget = 0, sumSciFiBudget = 0, sumSportBudget = 0, sumThrillerBudget =0, sumWarBudget = 0, sumWesternBudget =0;
long actionGrossAverage, adventureGrossAverage, animationGrossAverage, comedyGrossAverage, crimeGrossAverage, documentaryGrossAverage, dramaGrossAverage, familyGrossAverage, fantasyGrossAverage, historyGrossAverage, horrorGrossAverage, musicalGrossAverage, mysteryGrossAverage, romanceGrossAverage, sciFiGrossAverage, sportGrossAverage, thrillerGrossAverage, warGrossAverage, westernGrossAverage;
long actionBudgetAverage, adventureBudgetAverage, animationBudgetAverage, comedyBudgetAverage, crimeBudgetAverage, documentaryBudgetAverage, dramaBudgetAverage, familyBudgetAverage, fantasyBudgetAverage, historyBudgetAverage, horrorBudgetAverage, musicalBudgetAverage, mysteryBudgetAverage, romanceBudgetAverage, sciFiBudgetAverage, sportBudgetAverage, thrillerBudgetAverage, warBudgetAverage, westernBudgetAverage;
int actionCount =0, adventureCount =0, animationCount =0, comedyCount =0, crimeCount =0, documentaryCount =0, dramaCount =0, familyCount =0, fantasyCount =0, historyCount =0, horrorCount =0, musicalCount =0, mysteryCount =0, romanceCount =0, sciFiCount =0, sportCount =0, thrillerCount =0, warCount =0, westernCount =0;

long [] grossAverages = {actionGrossAverage, adventureGrossAverage, animationGrossAverage, comedyGrossAverage, crimeGrossAverage, documentaryGrossAverage, dramaGrossAverage, familyGrossAverage, fantasyGrossAverage, horrorGrossAverage, musicalGrossAverage, mysteryGrossAverage, romanceGrossAverage, sciFiGrossAverage, thrillerGrossAverage, westernGrossAverage};
long [] budgetAverages = {actionBudgetAverage, adventureBudgetAverage, animationBudgetAverage, comedyBudgetAverage, crimeBudgetAverage, documentaryBudgetAverage, dramaBudgetAverage, familyBudgetAverage, fantasyBudgetAverage, horrorBudgetAverage, musicalBudgetAverage, mysteryBudgetAverage, romanceBudgetAverage, sciFiBudgetAverage, thrillerBudgetAverage, westernBudgetAverage};

void setup()
{  
  myFont = createFont("Cooper Black",20);
  size(1200, 700);
  //setup array
  lines = loadStrings("movie_metadata.txt");
  data();
  grossAverages[0] = actionGrossAverage;
  grossAverages[1] = adventureGrossAverage;
  grossAverages[2] = animationGrossAverage;
  grossAverages[3] = comedyGrossAverage;
  grossAverages[4] = crimeGrossAverage;
  grossAverages[5] = documentaryGrossAverage;
  grossAverages[6] = dramaGrossAverage;
  grossAverages[7] = familyGrossAverage;
  grossAverages[8] = fantasyGrossAverage;
  grossAverages[9] = horrorGrossAverage;
  grossAverages[10] = musicalGrossAverage;
  grossAverages[11] = mysteryGrossAverage;
  grossAverages[12] = romanceGrossAverage;
  grossAverages[13] = sciFiGrossAverage;
  grossAverages[14] = thrillerGrossAverage;
  grossAverages[15] = westernGrossAverage;
  
  budgetAverages[0] = actionBudgetAverage;
  budgetAverages[1] = adventureBudgetAverage;
  budgetAverages[2] = animationBudgetAverage;
  budgetAverages[3] = comedyBudgetAverage;
  budgetAverages[4] = crimeBudgetAverage;
  budgetAverages[5] = documentaryBudgetAverage;
  budgetAverages[6] = dramaBudgetAverage;
  budgetAverages[7] = familyBudgetAverage;
  budgetAverages[8] = fantasyBudgetAverage;
  budgetAverages[9] = horrorBudgetAverage;
  budgetAverages[10] = musicalBudgetAverage;
  budgetAverages[11] = mysteryBudgetAverage;
  budgetAverages[12] = romanceBudgetAverage;
  budgetAverages[13] = sciFiBudgetAverage;
  budgetAverages[14] = thrillerBudgetAverage;
  budgetAverages[15] = westernBudgetAverage;
}
void draw()
{
  background(255);
  //IF MOUSE OVER budgetBUTTON set budgetVisible to true and set averageVis and other to false; 
  // background(255); not sure how we need this yet, perhaps to overwrite the
  grid();

  buttons();
  //under here is the if statements for the buttons
  //if(budgetVisible)
  //{
  //  //DRAW BUDGET INFO

  //}
  //else if(averageVisible)
  //{
  //  //DRAW AVERAGE INFO
  //}
  //else if(totalVisible)
  //{
  //  //DRAW TOTAL
  //}
}

void grid() 
{
  pushMatrix();
  translate(125, 50);
  fill(#DBDBDB);
  stroke(255);
  strokeWeight(3);
  for (int i = 0; i<1000; i = i+125) 
  {
    for (float j = 0; j<500; j = j+31.25) 
    {
      rect(i, j, 125, 31.25);
    }
  }
  
  //keys
  rect(0, 600, 62.5, 15.625);
  fill(0);
  text(" = 125,000,000", 125, 605);
  stroke(0);
  strokeWeight(1);
  pushStyle();
  textFont(myFont);
  fill(#FF0000);
  text(title, 500,-30);
  popStyle();
  
  //loops to draw  y axis lines
  float y = 15.625;
  for (int k = 0; k<16; k++) 
  {
    line(0, y, -10, y);
    y = y + 31.25;
  }
  //loop to draw x-axis
  int x = 250;
  for (int l = 0; l<4; l++) 
  {
    line(x, 510, x, 500);
    fill(0);
    text(numbers[l], x, 520); 
    x = x + 250;
  }

  pushStyle();

  int wordX = -110; 
  textAlign(LEFT, LEFT);
  fill(#272727);
  text("Action", wordX, 20);
  text("Adventure", wordX, 50);
  text("Animation", wordX, 83);
  text("Comedy", wordX, 113);
  text("Crime", wordX, 144);
  text("Documentary", wordX, 175);
  text("Drama", wordX, 206);
  text("Family", wordX, 237);
  text("Fantasy", wordX, 268);
  text("Horror", wordX, 300);
  text("Musical", wordX, 331);
  text("Mystery", wordX, 363);
  text("Romance", wordX, 396);
  text("Sci-fi", wordX, 428);
  text("Thriller", wordX, 459);
  text("Western", wordX, 490);

  popStyle();
  fill(#88E582);
  float y2 =15;
  for (int i = 0; i<grossAverages.length; i++) {
    float w = map(grossAverages[i], 0, 100000000/2, 0, 500);
    // line(0,y2,w,100);

    if (button2 == true) {
      ellipse(w, y2, 10, 10);
      y2 = y2+31.25;
    }
  }
  fill(#F74C46);
  float y3 = 15;
    for (int i = 0; i<budgetAverages.length; i++) {
    float w = map(budgetAverages[i], 0, 100000000/2, 0, 500);
    // line(0,y2,w,100);

    if (button3 == true) {
      ellipse(w, y3, 10, 10);
      y3 = y3+31.25;
    }
  }
  popMatrix();
}

void data()
{ //double values which will be used to store the sum of the gross for each movie matched with their genre ofc

  for (int i = 0; i<lines.length; i++) 
  { //following are functions to split our data from our txt file into array values
    data = split(lines[i], ',');
    movieType = split(data[1], '|');
    int gross = int(data[0]);
    int budget = int(data[2]);    

    if (gross > 0)
    {
      if (movieType[0].contains("Action")) //the if statements puts together the value of the budget of each genre seperately
      {
        //print(movieType[0]); //prints the movietype "Action" (not sure we need this, probably not)
        sumAction = sumAction + gross;
        actionCount++;
      }

      if (movieType[0].contains("Adventure"))
      {
        sumAdventure = sumAdventure + gross;
        adventureCount++;
      }

      if (movieType[0].contains("Animation"))
      {
        sumAnimation = sumAnimation + gross;
        animationCount++;
      }

      if (movieType[0].contains("Comedy"))
      {
        sumComedy = sumComedy + gross;
        comedyCount++;
      }

      if (movieType[0].contains("Crime"))
      {
        sumCrime = sumCrime + gross;
        crimeCount++;
      }

      if (movieType[0].contains("Documentary"))
      {
        sumDocumentary = sumDocumentary + gross;
        documentaryCount++;
      }

      if (movieType[0].contains("Drama"))
      {
        sumDrama = sumDrama + gross;
        dramaCount++;
      }

      if (movieType[0].contains("Family"))
      {
        sumFamily = sumFamily + gross;
        familyCount++;
      }

      if (movieType[0].contains("Fantasy"))
      {
        sumFantasy = sumFantasy + gross;
        fantasyCount++;
      }

      if (movieType[0].contains("History"))
      {
        sumHistory = sumHistory + gross;
        historyCount++;
      }

      if (movieType[0].contains("Horror"))
      {
        sumHorror = sumHorror + gross;
        horrorCount++;
      }

      if (movieType[0].contains("Musical"))
      {
        sumMusical = sumMusical + gross;
        musicalCount++;
      }

      if (movieType[0].contains("Mystery"))
      {
        sumMystery = sumMystery + gross;
        mysteryCount++;
      }

      if (movieType[0].contains("Romance"))
      {
        sumRomance = sumRomance + gross;
        romanceCount++;
      }

      if (movieType[0].contains("Sci-Fi"))
      {
        sumSciFi = sumSciFi + gross;
        sciFiCount++;
      }

      if (movieType[0].contains("Sport"))
      {
        sumSport = sumSport + gross;
        sportCount++;
      }

      if (movieType[0].contains("Thriller"))
      {
        sumThriller = sumThriller + gross;
        thrillerCount++;
      }

      if (movieType[0].contains("War"))
      {
        sumWar = sumWar + gross;
        warCount++;
      }

      if (movieType[0].contains("Western"))
      {
        sumWestern = sumWestern + gross;
        westernCount++;
      }


      //if statements for the budget totals
      if (movieType[0].contains("Action")) //the if statements puts together the value of the budget of each genre seperately
      {
        sumActionBudget = sumActionBudget + budget;
        actionCount++;
      }

      if (movieType[0].contains("Adventure"))
      {
        sumAdventureBudget = sumAdventureBudget + budget;
        adventureCount++;
      }

      if (movieType[0].contains("Animation"))
      {
        sumAnimationBudget = sumAnimationBudget + budget;
        animationCount++;
      }

      if (movieType[0].contains("Comedy"))
      {
        sumComedyBudget = sumComedyBudget + budget;
        comedyCount++;
      }

      if (movieType[0].contains("Crime"))
      {
        sumCrimeBudget = sumCrimeBudget + budget;
        crimeCount++;
      }

      if (movieType[0].contains("Documentary"))
      {
        sumDocumentaryBudget = sumDocumentaryBudget + budget;
        documentaryCount++;
      }

      if (movieType[0].contains("Drama"))
      {
        sumDramaBudget = sumDramaBudget + budget;
        dramaCount++;
      }

      if (movieType[0].contains("Family"))
      {
        sumFamilyBudget = sumFamilyBudget + budget;
        familyCount++;
      }

      if (movieType[0].contains("Fantasy"))
      {
        sumFantasyBudget = sumFantasyBudget + budget;
        fantasyCount++;
      }

      if (movieType[0].contains("History"))
      {
        sumHistoryBudget = sumHistoryBudget + budget;
        historyCount++;
      }

      if (movieType[0].contains("Horror"))
      {
        sumHorrorBudget = sumHorrorBudget + budget;
        horrorCount++;
      }

      if (movieType[0].contains("Musical"))
      {
        sumMusicalBudget = sumMusicalBudget + budget;
        musicalCount++;
      }

      if (movieType[0].contains("Mystery"))
      {
        sumMysteryBudget = sumMysteryBudget + budget;
        mysteryCount++;
      }

      if (movieType[0].contains("Romance"))
      {
        sumRomanceBudget = sumRomanceBudget + budget;
        romanceCount++;
      }

      if (movieType[0].contains("Sci-Fi"))
      {
        sumSciFiBudget = sumSciFiBudget + budget;
        sciFiCount++;
      }

      if (movieType[0].contains("Sport"))
      {
        sumSportBudget = sumSportBudget + budget;
        sportCount++;
      }

      if (movieType[0].contains("Thriller"))
      {
        sumThrillerBudget = sumThrillerBudget + budget;
        thrillerCount++;
      }

      if (movieType[0].contains("War"))
      {
        sumWarBudget = sumWarBudget + budget;
        warCount++;
      }

      if (movieType[0].contains("Western"))
      {
        sumWesternBudget = sumWesternBudget + budget;
        westernCount++;

        //minimum value of each genre
      }
    }
  }
  actionGrossAverage = sumAction / actionCount;
  adventureGrossAverage = sumAdventure / adventureCount;
  animationGrossAverage = sumAnimation / animationCount;
  comedyGrossAverage = sumComedy / comedyCount;
  crimeGrossAverage = sumCrime / crimeCount;
  documentaryGrossAverage = sumDocumentary / documentaryCount;
  dramaGrossAverage = sumDrama / dramaCount;
  familyGrossAverage = sumFamily / familyCount;
  fantasyGrossAverage = sumFantasy / fantasyCount;
  // historyGrossAverage = sumHistory / historyCount;
  horrorGrossAverage = sumHorror / horrorCount;
  musicalGrossAverage = sumMusical / musicalCount;
  mysteryGrossAverage = sumMystery / mysteryCount;
  romanceGrossAverage = sumRomance / romanceCount;
  sciFiGrossAverage = sumSciFi / sciFiCount;
  // sportGrossAverage = sumSport / sportCount;
  thrillerGrossAverage = sumThriller / thrillerCount;
  // warGrossAverage = sumWar / warCount;
  westernGrossAverage = sumWestern / westernCount;

  actionBudgetAverage = sumActionBudget / actionCount;
  adventureBudgetAverage = sumAdventureBudget / adventureCount;
  animationBudgetAverage = sumAnimationBudget / animationCount;
  comedyBudgetAverage = sumComedyBudget / comedyCount;
  crimeBudgetAverage = sumCrimeBudget / crimeCount;
  documentaryBudgetAverage = sumDocumentaryBudget / documentaryCount;
  dramaBudgetAverage = sumDramaBudget / dramaCount;
  familyBudgetAverage = sumFamilyBudget / familyCount;
  fantasyBudgetAverage = sumFantasyBudget / fantasyCount;
  // historyBudgetAverage = sumHistoryBudget / historyCount;
  horrorBudgetAverage = sumHorrorBudget / horrorCount;
  musicalBudgetAverage = sumMusicalBudget / musicalCount;
  mysteryBudgetAverage = sumMysteryBudget / mysteryCount;
  romanceBudgetAverage = sumRomanceBudget / romanceCount;
  sciFiBudgetAverage = sumSciFiBudget / sciFiCount;
  // sportBudgetAverage = sumSportBudget / sportCount;
  thrillerBudgetAverage = sumThrillerBudget / thrillerCount;
  // warBudgetAverage = sumWarBudget / warCount;
  westernBudgetAverage = sumWesternBudget / westernCount;

  //println("AVERAGE:" + actionAverage);
  //println("SUM ACTION: " + sumAction + "\t ACTIONCOUNT: " + actionCount);
  //// prints the total sum of the gross
  //print("Action: " + sumAction);  
  //print(" Adventure: " + sumAdventure);
  //print(" Animation: " + sumAnimation);
  //print(" Comedy: " + sumComedy);
  //print(" Crime: " + sumCrime);
  //print(" Documentary: " + sumDocumentary);
  //print(" Drama: " + sumDrama);
  //print(" Family: " + sumFamily);
  //print(" Fantasy: " + sumFantasy);
  //print(" History: " + sumHistory);
  //print(" Horror: " + sumHorror);
  //print(" Musical: " + sumMusical);
  //print(" Mystery: " + sumMystery);
  //print(" Romance: " + sumRomance);
  //print(" Sci-Fi: " + sumSciFi);
  //print(" Sport: " + sumSport);
  //print(" Thriller: " + sumThriller);
  //print(" War: " + sumWar);
  //print(" Western: " + sumWestern);

  //// prints the total sum of the budget
  //print(" Action Budget: " + sumActionBudget); 
  //print(" Adventure Budget: " + sumAdventureBudget);
  //print(" Animation Budget: " + sumAnimationBudget);
  //print(" Comedy Budget: " + sumComedyBudget);
  //print(" Crime Budget: " + sumCrimeBudget);
  //print(" Documentary Budget: " + sumDocumentaryBudget);
  //print(" Drama Budget: " + sumDramaBudget);
  //print(" Family Budget: " + sumFamilyBudget);
  //print(" Fantasy Budget: " + sumFantasyBudget);
  //print(" History Budget: " + sumHistoryBudget);
  //print(" Horror Budget: " + sumHorrorBudget);
  //print(" Musical Budget: " + sumMusicalBudget);
  //print(" Mystery Budget: " + sumMysteryBudget);
  //print(" Romance Budget: " + sumRomanceBudget);
  //print(" Sci-Fi Budget: " + sumSciFiBudget);
  //print(" Sport Budget: " + sumSportBudget);
  //print(" Thriller Budget: " + sumThrillerBudget);
  //print(" War Budget: " + sumWarBudget);
  //print(" Western Budget: " + sumWesternBudget);
}