size(800, 800);
//variables
var bX=0;
var bY=0;
var angle=random(0, 2*PI);
var speed=3;
var xV=sin(angle)*speed;
var yV=cos(angle)*speed;
var fx=1;
var fy=1;
var spawn=true;
var level=1;
var Bsize=10;
var bNo=0;
var pL=100;
var point=0;
//arrays
var walls=[[]];
var wSize=0;
var pause=false;
var keyC=true;
var BNr=0;

//functions
var addWall=function(no){
    for(var i=0;i<no;i++){
        walls[wSize+1]=[];
        walls[wSize]=[random(-200, 200), random(-200, 200), random(50, 100)];
        wSize++;
    }
}
var rBounce=function(){
    angle+=random(-.2, .2);
    spawn=false;
}
var upDown=function(){ 
    fy*=-1;
    rBounce();
}
var leftRight=function(){
    fx*=-1;
    rBounce();
}
var lose=function(){
    point--;
    bNo=0;
    bX=0;
    bY=0;
    angle=random(0, 2*PI);
    spawn=true;
}
//preloop calls
textAlign(CENTER, CENTER);
addWall(10);
draw=function(){
    //pause
    if(keyCode==80&&keyC){
            if(pause){
                pause=false;
            }else{
                pause=true;
            }
            keyCode=0;
            keyC=false;
    }
    if(!keyPressed){
        keyC=true;
    }
    if(pause){
        fill(0);
        textSize(100);
        text("PAUSED", 400, 400);        
    }
    //code vvv
    else{
        background(255, 255, 0);    
        //constant checks
        speed=3+(0.3*bNo)+((Bsize-10)/20);
        xV=sin(angle)*speed*fx;
        yV=cos(angle)*speed*fy;
        if(bNo==8){
            bNo=0;
            Bsize+=10;
            if(Bsize==100){
                Bsize=10;
                pL+=50;
                walls=[[]];                
                wSize=0;
                addWall(10);
            }
        }
        //bar
        stroke(255, 0, 0);
        strokeWeight(10);
        line(mouseX-(pL/2), 0, mouseX+(pL/2), 0);
        line(0, mouseY-(pL/2), 0, mouseY+(pL/2));
        line(mouseX-(pL/2), 800, mouseX+(pL/2), 800);
        line(800, mouseY-(pL/2), 800, mouseY+(pL/2));
        //movement
        bX+=xV;
        bY+=yV;
        //edge collision
        if(bX<-400+(Bsize/2)){                    
            if(bY+400>mouseY-(pL/2)&&bY+400<mouseY+(pL/2)){
                bX=-400+(Bsize/2);
                leftRight();
            }else{
                if(bX<-400){
                    lose();
                }
            }
        }
        if(bY<-400+(Bsize/2)){            
            if(bX+400>mouseX-(pL/2)&&bX+400<mouseX+(pL/2)){
                bY=-400+(Bsize/2);
                upDown();
            }else{
                if(bY<-400){
                    lose();
                }
            }
        }
        if(bX>400-(Bsize/2)){            
            if(bY+400>mouseY-(pL/2)&&bY+400<mouseY+(pL/2)){
                bX=400-(Bsize/2);
                leftRight();
            }else{
                if(bX>400){
                    lose();
                }
            }
        }
        if(bY>400-(Bsize/2)){            
            if(bX+400>mouseX-(pL/2)&&bX+400<mouseX+(pL/2)){
                bY=400-(Bsize/2);
                upDown();
            }else{
                if(bY>400){
                    lose();
                }
            }
        }
        //walls draw
        for(var i=0;i<wSize;i++){
            fill(255);
            stroke(255, 0, 0);
            strokeWeight(5);
            rect(walls[i][0]-(walls[i][2]/2)+400, walls[i][1]-(walls[i][2]/2)+400, walls[i][2], walls[i][2]);
            //small
            if(walls[i][2]<=30){
                walls[i][2]--;
            }
            if(walls[i][2]<=0){
                //square break
                walls[i][0]=-9999;
                walls[i][1]=-9999;
                walls[i][2]=9999;
                addWall(round(random(0.5, 2.5)));
                point++;
                bNo++;
                }
            //collision logic
            if(!spawn&&bX>walls[i][0]-(walls[i][2]/2)&&bX<walls[i][0]+(walls[i][2]/2)&&((bY>walls[i][1]-(walls[i][2]/2)-(Bsize/2)&&bY<walls[i][1])||(bY<walls[i][1]+(walls[i][2]/2)+(Bsize/2)&&bY>walls[i][1]))){
                upDown();  
                walls[i][2]-=(Bsize/2)+10;
            }
            if(!spawn&&bY>walls[i][1]-(walls[i][2]/2)&&bY<walls[i][1]+(walls[i][2]/2)&&((bX>walls[i][0]-(walls[i][2]/2)-(Bsize/2)&&bX<walls[i][0])||(bX<walls[i][0]+(walls[i][2]/2)+(Bsize/2)&&bX>walls[i][0]))){
                leftRight();  
                walls[i][2]-=20;            
            }
        }
        //ball
        fill(0);
        if(spawn){
            fill(255);
        }
        if(Bsize==90){
            fill(255, 0, 0);
        }
        noStroke();
        ellipse(bX+400, bY+400, Bsize, Bsize);
        //dots on ball
        fill(0, 0, 255);        
        BNr+=0.1;
        for(var i=0;i<bNo;i++){
            ellipse(bX+400+(sin(BNr+((PI*2/bNo)*i))*(.75*Bsize)), bY+400+(cos(BNr+((PI*2/bNo)*i))*(.75*Bsize)), Bsize/3, Bsize/3);
        }
        //points
        
        //debug
        fill(0);
        textSize(20);
        //text(keyCode, 200, 200);
    }
}


