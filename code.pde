size(800, 800);
//variables
var bX=0;
var bY=0;
var angle=random(0, 2*PI);
var speed=3;
var xV=sin(angle)*speed;
var yV=cos(angle)*speed;
var spawn=true;
var level=1;
var Bsize=10;
var point=0;
//arrays
var walls=[[]];
var wSize=0;
//functions
var addWall=function(no){
    for(var i=0;i<no;i++){
        walls[wSize+1]=[];
        walls[wSize]=[random(-200, 200), random(-200, 200), random(50, 100)];
        wSize++;
    }
}
var rBounce=function(){
    if(xV>0){
        xV+=random(.02);
    }else{
        xV-=random(.02);
    }
    if(yV>0){
        yV+=random(.02);
    }else{
        yV-=random(.02);
    }
    spawn=false;
}
var upDown=function(){ 
    yV*=-1;
    rBounce();
}
var leftRight=function(){
    xV*=-1;
    rBounce();
}
var lose=function(){
    point--;
    bX=0;
    bY=0;
    angle=random(0, 2*PI);
    speed=3;
    xV=sin(angle)*speed;
    yV=cos(angle)*speed;
    spawn=true;
}
//preloop calls
textAlign(CENTER, CENTER);
addWall(10);
draw=function(){
    background(255, 255, 0);    
    //bar
    stroke(255, 0, 0);
    strokeWeight(10);
    line(mouseX-50, 0, mouseX+50, 0);
    line(0, mouseY-50, 0, mouseY+50);
    line(mouseX-50, 800, mouseX+50, 800);
    line(800, mouseY-50, 800, mouseY+50);
    //movement
    bX+=xV;
    bY+=yV;
    //edge collision
    if(bX<-400+(Bsize/2)){        
        bX=-400+(Bsize/2);
        if(bY+400>mouseY-50&&bY+400<mouseY+50){
            leftRight();
        }else{
            lose();
        }
    }
    if(bY<-400+(Bsize/2)){
        bY=-400+(Bsize/2);
        if(bX+400>mouseX-50&&bX+400<mouseX+50){
            upDown();
        }else{
            lose();
        }
    }
    if(bX>400-(Bsize/2)){
        bX=400-(Bsize/2);
        if(bY+400>mouseY-50&&bY+400<mouseY+50){
            leftRight();
        }else{
            lose();
        }
    }
    if(bY>400-(Bsize/2)){
        bY=400-(Bsize/2);
        if(bX+400>mouseX-50&&bX+400<mouseX+50){
            upDown();
        }else{
            lose();
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
                walls[i][0]=-9999;
                walls[i][1]=-9999;
                walls[i][2]=9999;
            addWall(round(random(0.5, 2.5)));
            point++;
            }
        //collision logic
        if(!spawn&&bX>walls[i][0]-(walls[i][2]/2)&&bX<walls[i][0]+(walls[i][2]/2)&&((bY>walls[i][1]-(walls[i][2]/2)-(Bsize/2)&&bY<walls[i][1])||(bY<walls[i][1]+(walls[i][2]/2)+(Bsize/2)&&bY>walls[i][1]))){
            upDown();  
            walls[i][2]-=20;
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
    noStroke();
    ellipse(bX+400, bY+400, Bsize, Bsize);
    //points
    fill(0, 0, 0, 40);
    textSize(150);
    text(point, 400, 400);
    //debug
    fill(0);
    textSize(20);
    text(speed, 200, 200);
    text(bY, 300, 200);
    //stop
    if(keyCode==82){
        CRASH
    }
}


