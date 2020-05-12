$fn=100;

tube_gap = 300/11;
box_size=8.5;
box_gap = tube_gap/2-box_size;
base_height = 165;

//translate([300,165,0])rotate([0,0,90])
//translate([0,40,0])
//rotate([0,0,90])
//SideTubeHome();

//translate([2.25,10,40])Steps();

//HomeLidHolds();

//rotate([90,0,0])
//TubeLid();

//translate([300-60,165,0])rotate([0,0,90])
//SideTubeHolder();
//translate([300-60-120,165,0])rotate([0,0,90])SideTubeHolder();

//WaterTube();

//rotate([0,-90,0])
//WaterTower();

//SideTubeBase();


//TubeSep();


//Connectors();
//Connectors4();


//WaterBox();

//rotate([90,0,0])BaseAdapter();

TubeCellWall();

module TubeCellWall()
{
    difference() {
        cylinder(d=16,h=100);
        translate([0,0,-1])cylinder(d=15.6, h=250);
        translate([0,-20,-1]) cube([50,50,250]);
        
    }
}

module WaterBox()
{
    difference() {
        translate([110,0,0])cube([200-10,40,30]);
        translate([110+2+4,2,2])cube([200-10-4-4,40-4,30-4]);
        translate([4+8+6-0.1,4+11,11+4])rotate([0,90,0])cylinder(d=21,h=100);
    }
}

module Connectors4()
{
    for (j = [0:2])
    for (i = [0:2]) {
        translate([21*i,21*j,0])difference() {
            cube([20,20,2]);
            translate([5,5,-1])cylinder(d=3.4,h=8);
            translate([15,5,-1])cylinder(d=3.4,h=8);
            translate([15,15,-1])cylinder(d=3.4,h=8);
            translate([5,15,-1])cylinder(d=3.4,h=8);
        }
        
    }
    
}


module Connectors()
{
    for (j = [0:4])
    for (i = [0:3]) {
        translate([21*i,11*j,0])difference() {
            cube([20,10,2]);
            translate([5,5,-1])cylinder(d=3.4,h=8);
            translate([15,5,-1])cylinder(d=3.4,h=8);
        }
        
    }
    
}


module TubeSep()
{
    difference() {
        cylinder(d=16,h=4);
        translate([2,-4,-1])cube([9,8,8]);
    }
}


module WaterTower()
{
    difference() {
        translate([0,0,0])cube([110,40,30]);
    
       
        translate([5,40-5,-1])cylinder(d=3.4,h=100);
        translate([100,40-5,-1])cylinder(d=3.4,h=100);
        
        
        
        translate([40,4-0.5,-1])cube([65,23,40]);
        
        translate([45,4+11,11+4])rotate([0,90,0])cylinder(d=23,h=100);
        translate([4+8+6-0.1,4+11,11+4])rotate([0,90,0])cylinder(d=21,h=100);
        
        translate([-1,4+11,11+4])rotate([0,90,0])cylinder(d=4,h=100);
        translate([4,6,6])cube([8+6,18,18]);
        
    }
    
    
}

module WaterTube()
{
    difference() {
        union() {
            cylinder(d=16, h=100);
            cylinder(d=20, h=5);
        }
        translate([0,-10,50])cube([20,20,120]);
        translate([0,0,10])cylinder(d=14, h=80);
        translate([0,-10,100-8])rotate([0,-45,0])cube([20,20,20]);
        
        translate([-4,0,-1])cylinder(d=4,h=20);
    }
    
 
    
}
module SideTubeBase()
{
    
    difference() {
        union() {
            cube([300,base_height,34]);
           // translate([300,10,5])cube([1,40,26-10]);
            translate([300-40-10,base_height,5])cube([40,1,26-10]);
        }
        AntHoles1();
            
        AntHoles3();
            
        AntHoles4();    
        
        i=0;
      //  translate([(box_size+box_gap) *2 * i,0,10])cube([box_size,box_size,17+10]);
      //  translate([(box_size+box_gap) *2 * i -(box_size+box_gap) ,2*box_size+box_gap,10])cube([box_size,box_size,17+10]);
      //  translate([(box_size+box_gap) *2 * i -(box_size+box_gap) ,2*box_size+box_gap,10])cube([box_size,box_size+10,8]);
        
      //  translate([(box_size+box_gap) *2 * i,box_size,10])rotate([0,0,45])translate([0, -box_size*sqrt(2)/2,0])cube([box_size/sqrt(2),(box_size*3/2+box_gap)*sqrt(2),38]);
        
        translate([292.5,base_height+5,0])translate([(box_size+box_gap) *2 * i,box_size,2+8])rotate([0,0,180-45])cube([box_size/sqrt(2),(3/2*box_size+box_gap)*sqrt(2)+100,8]);
        
       // 
        translate([20,14,4])cube([260,120,40]);
        translate([266.5,base_height-3,-1])rotate([0,0,0])cube([11,0.5,50]);
        //StepsWithoutHoles();
    }
    
    translate([292.5-38.343,base_height+5-44,0])translate([(box_size+box_gap) *2 * 0,box_size,0])rotate([0,0,180-45])cube([4,(3/2*box_size+box_gap)*sqrt(2)+150+(base_height-165)*sqrt(2),20]);
    
}


module BaseAdapter()
{
    difference() {
    cube([300,20,30]);
    translate([0,-160+5,0])AntHoles5();
    translate([0,-140-5,0])AntHoles4();
    translate([4,-1,4]) cube([300-8,40,30-8]);
        
    }
    
    translate([105,0,4]) cube([4,20,30-8]);
    translate([205,0,4]) cube([4,20,30-8]);
    
}

module AntHoles5()
{
    // translate([5,160,-1])cylinder(d=3.4,h=52);
    //    translate([300-5,160,-1])cylinder(d=3.4,h=52);
        
    //    translate([116,160,-1])cylinder(d=3.4,h=52);
    //    translate([222,160,-1])cylinder(d=3.4,h=52);
    
    translate([5,160,-1])cylinder(d=3.4,h=35);
    translate([300-5,160,-1])cylinder(d=3.4,h=35);
    translate([100,160,-1])cylinder(d=3.4,h=35);
    translate([200,160,-1])cylinder(d=3.4,h=35);
    
    
}

module AntHoles4()
{
        translate([5,base_height-5,-1])cylinder(d=3.4,h=52);
        translate([300-5,base_height-5,-1])cylinder(d=3.4,h=52);
        
        translate([300-60+5,base_height-5,-1])cylinder(d=3.4,h=52);
        translate([300-60+5-10,base_height-5,-1])cylinder(d=3.4,h=52);
        translate([300-60+5-10-110,base_height-5,-1])cylinder(d=3.4,h=52);
        translate([300-60+5-10-110-10,base_height-5,-1])cylinder(d=3.4,h=52);
        //translate([222,160,-1])cylinder(d=3.4,h=52);
    
}


module AntHoles3()
{
    translate([20,140,-1])cylinder(d=3.4,h=300);
    translate([15,80,-1])cylinder(d=3.4,h=300);
    translate([100,140,-1])cylinder(d=3.4,h=300);
    translate([200,140,-1])cylinder(d=3.4,h=300);
    translate([285,80,-1])cylinder(d=3.4,h=300);
    translate([280,140,-1])cylinder(d=3.4,h=300);
}

module AntHoles1()
{
    
    translate([20,9,-1])cylinder(d=3.4,h=300);
    translate([80,9,-1])cylinder(d=3.4,h=300);
    translate([150,9,-1])cylinder(d=3.4,h=300);
    translate([220,9,-1])cylinder(d=3.4,h=300);
    translate([280,9,-1])cylinder(d=3.4,h=300);
    
}


module SideTubeHolder()
{
    
    difference() {
        union() {
            cube([300,120,26]);
        //    translate([300,10,5])cube([1,40,26-10]);
        }
       // translate([0,10-0.2,5-0.2])cube([1,40+0.4,26-10+0.4]);
       
        translate([5+0*72.5,5,-1]) cylinder(d=3.4,h=30);
    //translate([100,5,-1]) cylinder(d=3.4,h=30);
    //translate([200,5,-1]) cylinder(d=3.4,h=30);
    translate([300-5,5,-1]) cylinder(d=3.4,h=30);
    
    translate([5,120-5,-1]) cylinder(d=3.4,h=30);
    //translate([63,37,-1]) cylinder(d=3.4,h=30);
    //translate([145,37,-1]) cylinder(d=3.4,h=30);
    //translate([227,37,-1]) cylinder(d=3.4,h=30);
   // translate([200-8,5,-1]) cylinder(d=3.4,h=30);
    translate([300-5,120-5,-1]) cylinder(d=3.4,h=30);
        
      //  translate([2.5,10,0])Steps();
     
      translate([2.5,10,0])color("GREEN")
    for (i = [0:9]) {
        
      //  translate([(box_size+box_gap) *2 * i + box_size+box_gap,3*box_size+box_gap,10])cube([6,5,48]);
        
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6,-11,2])cube([24,190,48]);
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6 + 24/2+7,-5,-1])cylinder(d=3.4,h=30);
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6 + 24/2+7,110-5,-1])cylinder(d=3.4,h=30);
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6 + 24/2+7,50,-1])cylinder(d=3.4,h=30);
        
     //   translate([(box_size+box_gap) *2 * i + box_size+box_gap-1,0+2*box_size+box_gap+10,-1])cube([11,0.5,30]);
        
    //    translate([(box_size+box_gap) *2 * i + box_size+box_gap+4,2*box_size+box_gap-8,-1])rotate([0,0,45])cube([11,0.5,30]);
    }
    
    // translate([(box_size+box_gap) *2 * 0 + box_size+box_gap-14.6,2*box_size+box_gap-12.8,-1])rotate([0,0,45])cube([11,0.5,30]);
    
     //translate([(box_size+box_gap) *2 * 10 + box_size+box_gap+3,2*box_size+box_gap-9,-1])rotate([0,0,45])cube([11,0.5,30]);
    
    
    }
}

module HomeLidHolds()
{
    projection(){
        HomeLid();
        translate([0,63,0])HomeLid();
        translate([0,63+63,0])HomeLid();
    }
}

module HomeLid()
{
    difference() {
        cube([300,60,26]);
        ScrewHoles();
    }
    
    
}



module TubeLid()
{
    difference() {
        translate([10.3,44.2,2.1])cube([24-0.3,15.8,23.8]);
        translate([10.3+10+2,44+2,2.1+12])rotate([-90,0,0])cylinder(d=20.3,h=18);
        translate([16.3,30,10])cube([8,50,8]);
        
        translate([(box_size+box_gap) *2 * 0 + box_size+box_gap-6 + 24/2+7+2.5,60-5,-1])cylinder(d=3,h=10);
    }
    
    difference() {
        translate([10.3+10+2,44+2,2.1+12])rotate([-90,0,0])cylinder(d=16,h=14);
     
        translate([16.3,30,10])cube([8,50,8]);
        translate([16.3,58.2,10])rotate([0,0,45])cube([8,20,8]);
    }
    
    
}

module SideTubeHome()
{
    difference() {
        union() {
            cube([300,60,26]);
            translate([300,10,5])cube([1,40,26-10]);
        }
        translate([0,10-0.2,5-0.2])cube([1,40+0.4,26-10+0.4]);
        
        ScrewHoles();
        //translate([0,30,0])ScrewHoles();
        
        translate([2.5,10,0])Steps();
        
    }
    
}


module StepsWithoutHoles() {
    color("RED")
    for (i = [0:12]) {
        translate([(box_size+box_gap) *2 * i,0,10])cube([box_size,box_size,17+10]);
        translate([(box_size+box_gap) *2 * i -(box_size+box_gap) ,2*box_size+box_gap,10])cube([box_size,box_size,17+10]);
        translate([(box_size+box_gap) *2 * i -(box_size+box_gap) ,2*box_size+box_gap,10])cube([box_size,box_size+10,8]);
        
        translate([(box_size+box_gap) *2 * i,box_size,10])rotate([0,0,45])translate([0, -box_size*sqrt(2)/2,0])cube([box_size/sqrt(2),(box_size*3/2+box_gap)*sqrt(2),8]);
        
        translate([(box_size+box_gap) *2 * i,box_size,2+8+8])rotate([0,0,-45])cube([box_size/sqrt(2),(3/2*box_size+box_gap)*sqrt(2),8+1+10]);
        
    }
    
}

module Steps()
{   
    StepsWithoutHoles();
    
    color("GREEN")
    for (i = [0:9]) {
        
      //  translate([(box_size+box_gap) *2 * i + box_size+box_gap,3*box_size+box_gap,10])cube([6,5,48]);
        
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6,2+2*box_size+box_gap+10,2])cube([24,19,48]);
        //translate([(box_size+box_gap) *2 * i + box_size+box_gap-6 + 24/2+7,8+2*box_size+box_gap+10+4,-1])cylinder(d=3.4,h=30);
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6 + 24/2+7,50-5,-1])cylinder(d=3.4,h=30);
        
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-1,0+2*box_size+box_gap+10,-1])cube([11,0.5,30]);
        
        translate([(box_size+box_gap) *2 * i + box_size+box_gap+4,2*box_size+box_gap-8,-1])rotate([0,0,45])cube([11,0.5,30]);
    }
    
     translate([(box_size+box_gap) *2 * 0 + box_size+box_gap-14.6,2*box_size+box_gap-12.8,-1])rotate([0,0,45])cube([11,0.5,30]);
    
     translate([(box_size+box_gap) *2 * 10 + box_size+box_gap+3,2*box_size+box_gap-9,-1])rotate([0,0,45])cube([11,0.5,30]);
    
    
}


module ScrewHoles()
{
    
    translate([5+0*72.5,5,-1]) cylinder(d=3.4,h=30);
    translate([100,5,-1]) cylinder(d=3.4,h=30);
    translate([200,5,-1]) cylinder(d=3.4,h=30);
    translate([300-5,5,-1]) cylinder(d=3.4,h=30);
    
    translate([5,60-5,-1]) cylinder(d=3.4,h=30);
    translate([63,37,-1]) cylinder(d=3.4,h=30);
    translate([145,37,-1]) cylinder(d=3.4,h=30);
    translate([227,37,-1]) cylinder(d=3.4,h=30);
   // translate([200-8,5,-1]) cylinder(d=3.4,h=30);
    translate([300-5,60-5,-1]) cylinder(d=3.4,h=30);
    
}
