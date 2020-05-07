$fn=100;


AntHome();

//translate([0,0,40])Steps();

//rotate([90,0,0])
//AntWaterBox();

//rotate([-90,0,0])
//translate([0,10,0])AntWaterBoxLid();

//projection() AntHomeLid();


module AntHome()
{
    
    difference() {
        union() {
            cube([300,100,26]);
            translate([150-25/2-8,100,5]) cube([50-8,2,26-10]);
        }
        translate([150-25/2-8-0.5,0,5-0.5]) cube([50-8+1,2,26-10+1]);
        ScrewHoles();
        Steps();
        
        Rooms();
        
        WaterBox();
        
        translate([137.5,100-2,-1])rotate([0,0,0])cube([21,0.5,30]);
        translate([143,4,-1])rotate([0,0,0])cube([21,0.5,30]);
        translate([142,51,-1])rotate([0,0,-45])cube([11,0.5,30]);
        
        translate([149,70,-1])rotate([0,0,45])cube([11,0.5,30]);
        translate([149-0.5,20,-1])rotate([0,0,45])cube([11,0.5,30]);
    }
}

module AntWaterBoxLid()
{
    difference() {
        translate([10,30,4-1])cube([85,3,26-4+1]);
        translate([10+4,30-1,8-1])cube([81-4,5,26-4+1-8]);
      //  translate([10+2.5+1 + 60 ,31,6.5])cube([20,2,20]);
    }
    
    translate([10+2.5,2.5,6.5])cube([84-4,30.5,2]);
    translate([10+2.5,2.5,26-1-2.5-2])cube([84-4,30.5,2]);
    translate([10+2.5,2.5,6.5])cube([2,30.5,16]);
    translate([90+0.5,2.5,6.5])cube([2,30.5,16]);
    
    translate([10+2.5 + 20,2.5,6.5])cube([2,30.5,16]);
    translate([10+2.5 + 40,2.5,6.5])cube([2,30.5,16]);
    translate([10+2.5 + 60,2.5,6.5])cube([2,30.5,16]);
    
    translate([10+2.5+1 + 60+1.4 ,31,6.5])cube([4,2,16]);
    translate([10+2.5+1 + 60+1.4+4.4 ,31,6.5])cube([4,2,16]);
    translate([10+2.5+1 + 60+1.4+4.4+4.4,31,6.5])cube([4,2,16]);
    translate([10+2.5+1 + 60+1.4+4.4+4.4+4.4,31,6.5])cube([4,2,16]);
    
}


module AntWaterBox()
{
    difference() {
        union() {
            translate([-30,0,4])cube([120-0.5+30,30-0.2,22-1]);
            translate([-30-0.5,0,0])cube([30,60,30]);
        }
        
        translate([12,2,6])cube([81,40,22-1-4]);
        
        translate([-30+4,10,6])cube([142,17,22-1-4]);
        
        translate([-15,26,15])rotate([-90,0,0])cylinder(d=22,h=50);
        
        ScrewHoles();
    }
}

module AntHomeLid()
{
    
    difference() {
        union() {
            cube([300,200,26]);
        }
        ScrewHoles();
        translate([0,100,0])ScrewHoles();
    }
}


module WaterBox()
{
    translate([0,-1-2,4])cube([120,40-8+1,26-4+1]);
    translate([10,-1,4])cube([85,75+1,26-4+1]);
    
    translate([80,40-8+1,18])cube([36,8,26-4+1]);
    
}

//translate([170,12,18]) Tunnel(100,7);

module Room1()
{
 //   translate([10,12,18]) Tunnel(100,7);
 ////   translate([5,15,4]) Room(20,13);
 //   translate([42,15,4]) Room(30,13);
 //   translate([90,14,4]) Room(20,13);
   
    translate([180,13,18]) Tunnel(100,7);
    translate([176,14,4]) Room(22,12);
    translate([212,15,4]) Room(30-2,13);
    translate([255,15,4]) Room(25,13);
}

module Room2()
{
  //  translate([10,12,18]) Tunnel(100,7);
  //  translate([5,15,4]) Room(20,15);
  //  translate([45,15,4]) Room(25,15);
  //  translate([95,14,4]) Room(20-2,15);
   
    translate([180,13,18]) Tunnel(100,7);
    translate([176,14,4]) Room(20-6,15);
    translate([208,15,4]) Room(30-2,15);
    translate([255,15,4]) Room(25,15);
}

module Room3()
{
    translate([10,13,18]) Tunnel(100,7);
    translate([8,15,4]) Room(20-2,13);
    translate([42,15,4]) Room(30,13);
    translate([90,12,4]) Room(22,12);
   
    translate([180,12,18]) Tunnel(100,7);
    translate([178,12,4]) Room(20,12);
    translate([212,15,4]) Room(30-2,13);
    translate([255,15,4]) Room(23,13);
}

module Room4()
{
  //  translate([10,12,18]) Tunnel(100,7);
  //  translate([5,15,4]) Room(20,15);
  //  translate([45,15,4]) Room(25,15);
  //  translate([90,14,4]) Room(20-2,15);
   
    translate([180,13,18]) Tunnel(100,7);
    translate([176,14,4]) Room(20-6,15);
    translate([208,15,4]) Room(30-2,15);
    translate([255,15,4]) Room(25,15);
}
module Rooms()
{
    Room1();
    
    translate([0,25,0]) Room4();
    translate([0,50,0]) Room2();
    translate([0,75,0]) Room3();
    
    
}


module Tunnel(x,y)
{
    translate([y/2,0,y/2])rotate([0,90,0]) {
        sphere(d=y);
        cylinder(d=y,h=x);
        translate([0,0,x])sphere(d=y);
    }
}

module Room(x, y, z=3)
{
    scale([1,1,z])Tunnel(x,y);
}

module Steps()
{
    translate([0,8,0]) color("RED") {
        translate([150-25/2-8,25,2]) cube([8,8,25]);
        translate([150+25/2,0,2]) cube([8,8,25]);
    
    
        translate([150-25/2-8,75,2]) cube([8,8,25]);
        translate([150+25/2,50,2]) cube([8,8,25]);

        translate([150-25/2,25-50,10])rotate([0,0,45]) {cube([43.36,8,8]);cube([0,8,17]);}
        translate([150-25/2,25,10])rotate([0,0,45]){cube([43.36,8,8]);cube([33,8,17]);}
        translate([150-25/2,25+50,10])rotate([0,0,45]){cube([43.36,8,8]);{cube([43.36,8,8]);cube([8,8,17]);}}
        
        translate([150-25/2,25,18])rotate([0,0,-45])cube([35.4,8,25-16]);
        translate([150-25/2,25+50,18])rotate([0,0,-45])cube([35.4,8,25-16]);
        
        
        translate([150-25/2-8,25,2]) cube([35,8,8]);
        translate([150+25/2,25,2]) cube([8,8,25]);
        
        translate([150-25/2-8,75,2]) cube([35,8,8]);
        translate([150+25/2,75,2]) cube([8,8,25]);
        
     //   translate([150-25/2-8,0,2]) cube([35,8,8]);
      //  translate([150-25/2-8,0,2]) cube([8,8,25]);

    //    translate([150-25/2-8,50,2]) cube([35,8,8]);
     //   translate([150-25/2-8,50,2]) cube([8,8,25]);
        
        
        for (i = [1:3]) {
            if (i != 2)translate([120-5,i*25,18]) cube([15,8,9]);
            translate([170,i*25,18]) cube([15,8,9]);
            
            
            if (i != 2)translate([127,i*25-1,-1]) cube([0.5,11,30]);
            translate([172,i*25-1,-1]) cube([0.5,11,30]);
            
        }
        
          //  translate([120-5,0*25,18]) cube([15,8,9]);
            translate([170,0*25,18]) cube([15,8,9]);
            
         //   translate([125,0*25-1,-1]) cube([0.8,10.2,30]);
            translate([172,0*25-1,-1]) cube([0.5,11,30]);
        

    }
    
    
    
    
}



module ScrewHoles()
{
    
    translate([5,5,-1])cylinder(d=3.4,h=30);
    translate([300-5,5,-1])cylinder(d=3.4,h=30);
    translate([100,5,-1])cylinder(d=3.4,h=30);
    translate([200,5,-1])cylinder(d=3.4,h=30);
    
    translate([5,100-5,-1])cylinder(d=3.4,h=30);
    translate([300-5,100-5,-1])cylinder(d=3.4,h=30); 
    
    translate([5,50,-1])cylinder(d=3.4,h=30);
    translate([300-5,50,-1])cylinder(d=3.4,h=30);
    
    
    translate([100,100-5,-1])cylinder(d=3.4,h=30);
    translate([200,100-5,-1])cylinder(d=3.4,h=30);
    
    translate([100,50,-1])cylinder(d=3.4,h=30);
    translate([200,50,-1])cylinder(d=3.4,h=30);
    
    
}