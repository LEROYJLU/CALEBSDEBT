size(900, 1100);
stroke(0);
strokeWeight(3);
var pw=0;
var ha=0;
var mn=1;
var gbn=-1;
var gboz=[];
var gboo=[];
var gbon=[];
var gbaz=[];
var gbao=[];
var gban=[];
var tb=function(){
for(var pc=0;pc<15;pc++){
if(piece[pc][0]==floor(opt[on-1])&&piece[pc][1]==round((opt[on-1]-floor(opt[on-1]))*10)){
on--;
}
}
}
var tr=function(){
for(var pcc=16;pcc<31;pcc++){
if(piece[pcc][0]==floor(opt[on-1])&&piece[pcc][1]==round((opt[on-1]-floor(opt[on-1]))*10)){
on--;
}
}
}
var tt=function(){
if(mn==0){
tb();
}
else{
tr();
}
}
var cross=function(x, y){
strokeWeight(7);
line(x*100+40, y*100+50, x*100+60, y*100+50);
line(x*100+50, y*100+40, x*100+50, y*100+60);
}
var piece=[];
for(var c=0;c<32;c++){
piece[c]=[0, 0];
}
piece[0][0]=4;
piece[0][1]=0;
piece[1][0]=5;
piece[1][1]=0;
piece[2][0]=3;
piece[2][1]=0;
piece[3][0]=6;
piece[3][1]=0;
piece[4][0]=2;
piece[4][1]=0;
piece[5][0]=7;
piece[5][1]=0;
piece[6][0]=1;
piece[6][1]=0;
piece[7][0]=8;
piece[7][1]=0;
piece[8][0]=0;
piece[8][1]=0;
piece[9][0]=7;
piece[9][1]=2;
piece[10][0]=1;
piece[10][1]=2;
piece[11][0]=0;
piece[11][1]=3;
piece[12][0]=2;
piece[12][1]=3;
piece[13][0]=4;
piece[13][1]=3;
piece[14][0]=6;
piece[14][1]=3;
piece[15][0]=8;
piece[15][1]=3;
piece[16][0]=4;
piece[16][1]=9;
piece[17][0]=5;
piece[17][1]=9;
piece[18][0]=3;
piece[18][1]=9;
piece[19][0]=6;
piece[19][1]=9;
piece[20][0]=2;
piece[20][1]=9;
piece[21][0]=7;
piece[21][1]=9;
piece[22][0]=1;
piece[22][1]=9;
piece[23][0]=8;
piece[23][1]=9;
piece[24][0]=0;
piece[24][1]=9;
piece[25][0]=7;
piece[25][1]=7;
piece[26][0]=1;
piece[26][1]=7;
piece[27][0]=0;
piece[27][1]=6;
piece[28][0]=2;
piece[28][1]=6;
piece[29][0]=4;
piece[29][1]=6;
piece[30][0]=6;
piece[30][1]=6;
piece[31][0]=8;
piece[31][1]=6;
var cl=0;
var opt=[];
var on=0;
var ce=0;
textAlign(CENTER, CENTER);
draw=function(){
background(255);
stroke(0);
fill(100);
rect(850, 1020, 50, 50);
fill(0);
rect(840, 1070, 60, 30);
rect(0, 1010, 90, 90);
if(ha==0){fill(255);}
textSize(60);
text("ø", 875, 1055);
fill(255);
textSize(25);
text("作弊", 870, 1088);
fill(0);
if(ce==1){
textSize(20);
text("K=King   A=Advisor   E=Elephant   H=Horse   R=Rook C=Cannon   P=Pawn", 495, 1060);
}
fill(255);
textSize(20);
text("TOGGLE", 45, 1030);
text("TO", 45, 1060);
if(ce==0){
text("ENGLISH", 45, 1090);
}
else{
text("CHINESE", 45, 1090);
}
fill(0);
for(var x=0;x<10;x++){
if(x<9){
line(x*100+50, 50, x*100+50, 450);
line(x*100+50, 550, x*100+50, 950);
}
line(50, x*100+50, 850, x*100+50);
}
line(350, 50, 550, 250);
line(350, 250, 550, 50);
line(350, 750, 550, 950);
line(350, 950, 550, 750);
cross(1, 2);
cross(7, 2);
cross(1, 7);
cross(7, 7);
cross(0, 3);
cross(2, 3);
cross(4, 3);
cross(6, 3);
cross(8, 3);
cross(0, 6);
cross(2, 6);
cross(4, 6);
cross(6, 6);
cross(8, 6);

for(var pc=0;pc<32;pc++){
fill(200);
strokeWeight(5);
if(pc<16){
stroke(0);
}
else{stroke(255, 0, 0);}
ellipse(piece[pc][0]*100+50, piece[pc][1]*100+50, 80, 80);
fill(0);
if(pc>15){
fill(255, 0, 0);
}
textSize(50);
textAlign(CENTER, CENTER);
var tc=0;
if(ce==0){
if(pc==0){
tc="將";
}
if(pc==2||pc==1){
tc="士";
}
if(pc==3||pc==4){
tc="象";
}
if(pc==5||pc==6){
tc="馬";
}
if(pc==7||pc==8){
tc="車";
}
if(pc==9||pc==10){
tc="包";
}
if(pc==11||pc==12|pc==13||pc==14||pc==15){
tc="卒";
}
if(pc==16){
tc="帥";
}
if(pc==17|pc==18){
tc="仕";
}
if(pc==20||pc==19){
tc="相";
}
if(pc==21||pc==22){
tc="傌";
}
if(pc==23|pc==24){
tc="俥";
}
if(pc==25||pc==26){
tc="炮";
}
if(pc==27||pc==28||pc==29||pc==30||pc==31){
tc="兵";
}
}
if(ce==1){
if(pc==0){
tc="K";
}
if(pc==2||pc==1){
tc="A";
}
if(pc==3||pc==4){
tc="E";
}
if(pc==5||pc==6){
tc="H";
}
if(pc==7||pc==8){
tc="R";
}
if(pc==9||pc==10){
tc="C";
}
if(pc==11||pc==12|pc==13||pc==14||pc==15){
tc="P";
}
if(pc==16){
tc="K";
}
if(pc==17|pc==18){
tc="A";
}
if(pc==20||pc==19){
tc="E";
}
if(pc==21||pc==22){
tc="H";
}
if(pc==23|pc==24){
tc="R";
}
if(pc==25||pc==26){
tc="C";
}
if(pc==27||pc==28||pc==29||pc==30||pc==31){
tc="P";
}
}
text(tc, piece[pc][0]*100+50, piece[pc][1]*100+62);
fill(0);
}
for(var oc=0;oc<on;oc++){
fill(255, 255, 0, 100);
noStroke();

ellipse(floor(opt[oc])*100+50, (opt[oc]-floor(opt[oc]))*1000+50, 80, 80);
stroke(5);
}

if(mousePressed&&cl==0){
for(var occ=0;occ<on;occ++){

if(sqrt(sq(mouseX-((floor(opt[occ]))*100+50))+sq(mouseY-((opt[occ]-floor(opt[occ]))*1000+50)))<40){
gbn++;
gboz[gbn]=piece[pw][0];
gboo[gbn]=piece[pw][1];
gbon[gbn]=pw;
gbaz[gbn]=undefined;
gbao[gbn]=undefined;
gban[gbn]=undefined;
piece[pw][0]=floor(opt[occ]);
piece[pw][1]=round((opt[occ]-floor(opt[occ]))*10);
for(var pp=16-(16*mn);pp<32-(16*mn);pp++){
if(piece[pw][0]==piece[pp][0]&&piece[pw][1]==piece[pp][1]){
gbaz[gbn]=piece[pp][0];
gbao[gbn]=piece[pp][1];
gban[gbn]=pp;
piece[pp][0]=999;
piece[pp][1]=999;
}
}

if(mn==0){
mn=1;
}
else{mn=0;}
on=0;
}
}
for(var pc=mn*16;pc<16+(mn*16);pc++){
if(sqrt(sq(mouseX-(piece[pc][0]*100+50))+sq(mouseY-(piece[pc][1]*100+50)))<40){
if(ha==1){
piece[pc][0]=999;
piece[pc][1]=999;
}
else{
on=0;
pw=pc;
if(pc==mn*16){
if(piece[pc][0]==4){
opt[on]=3+((piece[pc][1])/10);
on++;
tt();
opt[on]=5+((piece[pc][1])/10);
on++;
tt();
}
else{
opt[on]=4+((piece[pc][1])/10);
on++;
tt();
}
if(piece[pc][1]==1+(mn*7)){
opt[on]=piece[pc][0]+((mn*7)/10);
on++;
tt();
opt[on]=piece[pc][0]+0.2+((mn*7)/10);
on++;
tt();
}
else{
opt[on]=piece[pc][0]+0.1+((mn*7)/10);
on++;
tt();
}
for(var kc=1;kc>-1;kc++){
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]){
if(piece[pp][1]+kc*2*(mn-0.5)==piece[pc][1]){
kc=-2;

if(pp==0||pp==16){
opt[on]=piece[pp][0]+(piece[pp][1]/10);
on++;
tt();
}
pp=33;
}
}
}
}
}
if(pc==1+(mn*16)||pc==2+(mn*16)){
if(piece[pc][0]==4){
opt[on]=3+((mn*7)/10);
on++;
tt();
opt[on]=3.2+((mn*7)/10);
on++;
tt();
opt[on]=5+((mn*7)/10);
on++;
tt();
opt[on]=5.2+((mn*7)/10);
on++;
tt();
}
else{
opt[on]=4.1+((mn*7)/10);
on++;
tt();
}
}
if(pc==3+(mn*16)||pc==4+(mn*16)){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]-1&&piece[pp][1]==piece[pc][1]-1){
cc=1;
}
}
if(cc==0&&piece[pc][0]>1&&piece[pc][1]>1&&(mn==0||piece[pc][1]>6)){
opt[on]=piece[pc][0]-2+((piece[pc][1]-2)/10);
on++;
tt();
}
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]+1&&piece[pp][1]==piece[pc][1]-1){
cc=1;
}
}
if(cc==0&&piece[pc][0]<8&&piece[pc][1]>1&&(mn==0||piece[pc][1]>6)){
opt[on]=piece[pc][0]+2+((piece[pc][1]-2)/10);
on++;
tt();
}
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]+1&&piece[pp][1]==piece[pc][1]+1){
cc=1;
}
}
if(cc==0&&piece[pc][0]<8&&piece[pc][1]<8&&(mn==1||piece[pc][1]<3)){
opt[on]=piece[pc][0]+2+((piece[pc][1]+2)/10);
on++;
tt();
}
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]-1&&piece[pp][1]==piece[pc][1]+1){
cc=1;
}
}
if(cc==0&&piece[pc][0]>1&&piece[pc][1]<8&&(mn==1||piece[pc][1]<3)){
opt[on]=piece[pc][0]-2+((piece[pc][1]+2)/10);
on++;
tt();
}
}
if(pc==5+(mn*16)||pc==6+(mn*16)){

cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]-1&&piece[pp][1]==piece[pc][1]){
cc=1;
}
}

if(cc==0){
if(piece[pc][0]>1){
if(piece[pc][1]>0){
opt[on]=piece[pc][0]-2+((piece[pc][1]-1)/10);
on++;
tt();
}
if(piece[pc][1]<8){
opt[on]=piece[pc][0]-2+((piece[pc][1]+1)/10);
on++;
tt();
}
}
}
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]&&piece[pp][1]==piece[pc][1]-1){
cc=1;
}
}

if(cc==0){
if(piece[pc][1]>1){
if(piece[pc][0]>0){
opt[on]=piece[pc][0]-1+((piece[pc][1]-2)/10);
on++;
tt();
}
if(piece[pc][0]<8){
opt[on]=piece[pc][0]+1+((piece[pc][1]-2)/10);
on++;
tt();
}
}
}
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]+1&&piece[pp][1]==piece[pc][1]){
cc=1;
}
}

if(cc==0){
if(piece[pc][0]<8){
if(piece[pc][1]>0){
opt[on]=piece[pc][0]+2+((piece[pc][1]-1)/10);
on++;
tt();
}
if(piece[pc][1]<8){
opt[on]=piece[pc][0]+2+((piece[pc][1]+1)/10);
on++;
tt();
}
}
}
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pp][0]==piece[pc][0]&&piece[pp][1]==piece[pc][1]+1){
cc=1;
}
}

if(cc==0){
if(piece[pc][1]<8){
if(piece[pc][0]>0){
opt[on]=piece[pc][0]-1+((piece[pc][1]+2)/10);
on++;
tt();
}
if(piece[pc][0]<8){
opt[on]=piece[pc][0]+1+((piece[pc][1]+2)/10);
on++;
tt();
}
}

}
}
if(pc==7+(mn*16)||pc==8+(mn*16)){
for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][0]<gm){cc=1;}
if(piece[pp][0]==piece[pc][0]-gm&&piece[pp][1]==piece[pc][1]){
cc=1;
if((pp>15&&mn==0)||(pp<16&&mn==1)){
opt[on]=piece[pc][0]-gm+(piece[pc][1]/10);
on++;
tt();
}

}
}
if(cc==0){
opt[on]=piece[pc][0]-gm+(piece[pc][1]/10);
on++;
tt();
}
else{
gm=-2;
}
}

for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][1]<gm){cc=1;}
if(piece[pp][0]==piece[pc][0]&&piece[pp][1]==piece[pc][1]-gm){
cc=1;
if((pp>15&&mn==0)||(pp<16&&mn==1)){
opt[on]=piece[pc][0]+(piece[pc][1]-gm)/10
on++;
tt();
}

}
}
if(cc==0){
opt[on]=piece[pc][0]+(piece[pc][1]-gm)/10;
on++;
tt();
}
else{
gm=-2;
}
}

for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][0]+gm>8){cc=1;}
if(piece[pp][0]==piece[pc][0]+gm&&piece[pp][1]==piece[pc][1]){
cc=1;
if((pp>15&&mn==0)||(pp<16&&mn==1)){
opt[on]=piece[pc][0]+gm+(piece[pc][1]/10);
on++;
tt();
}

}
}
if(cc==0){
opt[on]=piece[pc][0]+gm+(piece[pc][1]/10);
on++;
tt();
}
else{
gm=-2;
}
}

for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][1]+gm>9){cc=1;}
if(piece[pp][0]==piece[pc][0]&&piece[pp][1]==piece[pc][1]+gm){
cc=1;
if((pp>15&&mn==0)||(pp<16&&mn==1)){
opt[on]=piece[pc][0]+((piece[pc][1]+gm)/10);
on++;
tt();
}

}
}
if(cc==0){
opt[on]=piece[pc][0]+((piece[pc][1]+gm)/10);
on++;
tt();
}
else{
gm=-2;
}

}
}
if(pc==9+(mn*16)||pc==10+(mn*16)){
for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][0]<gm){cc=1;}
if(piece[pp][0]==piece[pc][0]-gm&&piece[pp][1]==piece[pc][1]){
cc=1;
for(var ccc=0;ccc==0;){
gm++;
if(piece[pc][0]-gm<0){
ccc=1;
}
for(var pppp=0;pppp<32;pppp++){
if(piece[pppp][0]==piece[pc][0]-gm&&piece[pppp][1]==piece[pc][1]){
ccc=1;
pp=33;
if((pppp>15&&mn==0)||(pppp<16&&mn==1)){
opt[on]=piece[pc][0]-gm+((piece[pc][1])/10);
on++;
tt();
}
}
}
}

}
}
if(cc==0){
opt[on]=piece[pc][0]-gm+(piece[pc][1]/10);
on++;
tt();
}
else{
gm=-2;
}
}

for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][1]<gm){cc=1;}
if(piece[pp][0]==piece[pc][0]&&piece[pp][1]==piece[pc][1]-gm){
cc=1;
for(var ccc=0;ccc==0;){
gm++;
if(piece[pc][1]-gm<0){
ccc=1;
}
for(var pppp=0;pppp<32;pppp++){
if(piece[pppp][0]==piece[pc][0]&&piece[pppp][1]==piece[pc][1]-gm){
ccc=1;
pp=33;
if((pppp>15&&mn==0)||(pppp<16&&mn==1)){
opt[on]=piece[pc][0]+((piece[pc][1]-gm)/10);
on++;
tt();
}
}
}
}

}
}
if(cc==0){
opt[on]=piece[pc][0]+(piece[pc][1]-gm)/10;
on++;
tt();
}
else{
gm=-2;
}
}

for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][0]+gm>8){cc=1;}
if(piece[pp][0]==piece[pc][0]+gm&&piece[pp][1]==piece[pc][1]){
cc=1;
for(var ccc=0;ccc==0;){
gm++;
if(piece[pc][0]+gm>8){
ccc=1;
}
for(var pppp=0;pppp<32;pppp++){
if(piece[pppp][0]==piece[pc][0]+gm&&piece[pppp][1]==piece[pc][1]){

if(((pppp>15&&mn==0)||(pppp<16&&mn==1))&&ccc==0){
opt[on]=piece[pc][0]+gm+((piece[pc][1])/10);
on++;
tt();
}
ccc=1;
pp=33;
}
}
}

}
}
if(cc==0){
opt[on]=piece[pc][0]+gm+(piece[pc][1]/10);
on++;
tt();
}
else{
gm=-2;
}
}

for(var gm=1;gm>-1;gm++){
cc=0;
for(var pp=0;pp<32;pp++){
if(piece[pc][1]+gm>9){cc=1;}
if(piece[pp][0]==piece[pc][0]&&piece[pp][1]==piece[pc][1]+gm){
cc=1;
for(var ccc=0;ccc==0;){
gm++;
if(piece[pc][1]+gm>9){
ccc=1;
}
for(var pppp=0;pppp<32;pppp++){
if(piece[pppp][0]==piece[pc][0]&&piece[pppp][1]==piece[pc][1]+gm){
ccc=1;
pp=33;
if((pppp>15&&mn==0)||(pppp<16&&mn==1)){
opt[on]=piece[pc][0]+((piece[pc][1]+gm)/10);
on++;
tt();
}
}
}
}

}
}
if(cc==0){
opt[on]=piece[pc][0]+((piece[pc][1]+gm)/10);
on++;
tt();
}
else{
gm=-2;
}

}
}
if(pc==11+(mn*16)||pc==12+(mn*16)||pc==13+(mn*16)||pc==14+(mn*16)||pc==15+(mn*16)){
if((mn==0&&piece[pc][1]<5)||(mn==1&&piece[pc][1]>4)){
opt[on]=piece[pc][0]+((piece[pc][1]-(2*(mn-0.5)))/10);
on++;
tt();
}
else{
opt[on]=piece[pc][0]-1+(piece[pc][1]/10);
on++;
tt();
opt[on]=piece[pc][0]+1+(piece[pc][1]/10);
on++;
tt();
opt[on]=piece[pc][0]+((piece[pc][1]-(2*(mn-0.5)))/10);
on++;
tt();
}

}
}


}
}
if(mouseX<90&&mouseY>1010){
if(ce==0){
ce=1;
}
else{
ce=0;
}
}
if(mousePressed&&cl==0&&mouseX>850&&mouseY>1020&&mouseY<1070){
if(ha==0){ha=1;}
else{ha=0;}
}
if(mousePressed&&cl==0&&mouseX>840&&mouseY>1070&&gbn!=-1){
piece[gbon[gbn]][0]=gboz[gbn];
piece[gbon[gbn]][1]=gboo[gbn];
if(gban[gbn]!=undefined){
piece[gban[gbn]][0]=gbaz[gbn];
piece[gban[gbn]][1]=gbao[gbn];
}
gbn--;
opt=[];
on=0;
if(mn==0){
mn=1;
}
else{mn=0;}
}
cl=1;
}

if(mousePressed==false){cl=0;}
if(piece[0][0]==999&&piece[0][1]==999){
textSize(400);
fill(255, 0, 0);
textAlign(CENTER, CENTER);
text("紅勝", 450, 400);
CRASHTHECODE
}
if(piece[16][0]==999&&piece[16][1]==999){
textSize(400);
fill(0, 0, 0);
textAlign(CENTER, CENTER);
text("黑勝", 450, 900);
CRASHTHECODE
}
}