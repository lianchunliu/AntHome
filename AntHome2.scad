$fn=100;


AntHome();

//translate([0,0,40])Steps();


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
        
      //  TubeRooms();
        Rooms();
        
        translate([139,100-3,-1])rotate([0,0,-45])cube([10.2,0.8,30]);
        translate([153,11,-1])rotate([0,0,-45])cube([10.2,0.8,30]);
        translate([142,50,-1])rotate([0,0,-45])cube([10.2,0.8,30]);
        
        translate([149,70,-1])rotate([0,0,45])cube([10.2,0.8,30]);
        translate([149,20,-1])rotate([0,0,45])cube([10.2,0.8,30]);
    }
}


module TubeRooms()
{
    //translate([-1,13,13])rotate([0,90,0])cylinder(d=21,h=200);
    
    translate([-1,24,-1]) cube([122,22,29]);
}
//translate([170,12,18]) Tunnel(100,7);

module Room1()
{
    translate([10,12,18]) Tunnel(100,7);
    translate([5,15,4]) Room(20,13);
    translate([42,15,4]) Room(30,13);
    translate([90,14,4]) Room(20,13);
   
    translate([170,12,18]) Tunnel(100,7);
    translate([178,14,4]) Room(20,12);
    translate([212,15,4]) Room(30-2,13);
    translate([255,15,4]) Room(25,13);
}

module Room2()
{
    translate([10,12,18]) Tunnel(100,7);
    translate([5,15,4]) Room(20,15);
    translate([45,15,4]) Room(25,15);
    translate([90,14,4]) Room(20-2,15);
   
    translate([170,12,18]) Tunnel(100,7);
    translate([178,14,4]) Room(20-8,15);
    translate([208,15,4]) Room(30-2,15);
    translate([255,15,4]) Room(25,15);
}

module Room3()
{
    translate([10,12,18]) Tunnel(100,7);
    translate([8,15,4]) Room(20-2,13);
    translate([42,15,4]) Room(30,13);
    translate([90,12,4]) Room(20,12);
   
    translate([170,12,18]) Tunnel(100,7);
    translate([178,12,4]) Room(20,12);
    translate([212,15,4]) Room(30-2,13);
    translate([255,15,4]) Room(23,13);
}

module Room4()
{
    translate([10,12,18]) Tunnel(100,7);
    translate([5,15,4]) Room(20,15);
    translate([45,15,4]) Room(25,15);
    translate([90,14,4]) Room(20-2,15);
   
    translate([170,12,18]) Tunnel(100,7);
    translate([178,14,4]) Room(20-8,15);
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
        
        translate([150-25/2-8,0,2]) cube([35,8,8]);
        translate([150-25/2-8,0,2]) cube([8,8,25]);

        translate([150-25/2-8,50,2]) cube([35,8,8]);
        translate([150-25/2-8,50,2]) cube([8,8,25]);
        
        
        for (i = [0:3]) {
            translate([120-5,i*25,18]) cube([15,8,9]);
            translate([170,i*25,18]) cube([15,8,9]);
            
            translate([125,i*25-1,-1]) cube([0.8,10.2,30]);
            translate([174,i*25-1,-1]) cube([0.8,10.2,30]);
            
        }

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