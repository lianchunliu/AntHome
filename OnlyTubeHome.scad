$fn=100;

hole_d=20.8;
hole_height=122;
micro_gap = 0.4;

//AntHome();

//translate([0,0,40])Steps();

//rotate([180,0,0])
//TubeLids();
//TubeLid1();
//TubeLid2();
//TubeLid3();
TubeLid4();

module TubeLids()
{
    translate([-100,0,0]) TubeLid1();
    mirror()translate([-100,0,0])TubeLid1();
    
    translate([-100,2,0]) TubeLid2();
    mirror()translate([-100,2,0])TubeLid2();
    
    translate([-100,0,0]) TubeLid3();
    mirror()translate([-100,0,0])TubeLid3();
    
    translate([-100,2,0]) TubeLid4();
    mirror()translate([-100,2,0])TubeLid4();
    
    
}


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
        
        TubeRooms();
  //      Rooms();
        
        //translate([139,100-3,-1])rotate([0,0,-45])cube([10.2,0.8,30]);
     //   translate([153,11,-1])rotate([0,0,-45])cube([10.2,0.8,30]);
        translate([137.5,100-2,-1])rotate([0,0,0])cube([21,0.5,30]);
        translate([143,4,-1])rotate([0,0,0])cube([21,0.5,30]);
        
        translate([142,50,-1])rotate([0,0,-45])cube([11,0.5,30]);
        
        translate([149,70,-1])rotate([0,0,45])cube([11,0.5,30]);
        translate([149,20,-1])rotate([0,0,45])cube([11,0.5,30]);
    }
}

module TubeLid1()
{
    
    translate([111,5+3.4/2,26-hole_d/2])  {
        difference(){
     
        union() {
            translate([0,(hole_d)/2,0])rotate([0,90,0])cylinder(d=hole_d-micro_gap,h=10);
            translate([-8,hole_d/2,0])rotate([0,90,0])cylinder(d=16-micro_gap,h=10);
            translate([0,micro_gap/2,0]) cube([10,hole_d-micro_gap,hole_d/2-micro_gap/2]);
            
        }
        
        
        translate([-10,hole_d/2-4,-4]) cube([28,8,8]);
        
        translate([4,1.3,-4]) cube([16,13.1,16]);
        //translate([3.9,1.3,2.8]) rotate([-45,0,0])cube([7,9,7]);
        
        translate([2,5,-20]) cube([0.5,11,50]);
        
        translate([-1,5,-20]) cube([5,11,12]);
        
        rotate([0,0,45])translate([-6,7,-4]) cube([8,8,8]);
    
        }
        
        translate([4,1.3,-3.95])linear_extrude(height=14.15) polygon( points=[[0,0],[5.2,0],[0,5.1]] );
        
        //translate([4,1.3,-4]) cube([2,13.1,16]);
    }

    
    
}

module TubeLid2()
{
    
    translate([111,50-3.4/2-hole_d,26-hole_d/2]) {
        difference(){
     
        union() {
            translate([0,hole_d/2,0])rotate([0,90,0])cylinder(d=hole_d,h=10);
            translate([-8,hole_d/2,0])rotate([0,90,0])cylinder(d=16,h=10);
            translate([0,0,0]) cube([10,hole_d,hole_d/2]);
            
            
        }
        
        translate([-10,hole_d/2-4,-4]) cube([28,8,8]);
        
        translate([4,5.5,-4]) cube([7,8,16]);
        //translate([3.9,1.3,2.8]) rotate([0,0,0])cube([7,9,7]);
        
        translate([2,5,-20]) cube([0.5,11,50]);
        
        translate([-1,5,-20]) cube([5,11,12]);
        
        rotate([0,0,45])translate([-6,7,-4]) cube([8,8,8]);
    
        }
        translate([4,1.3,-3.95])linear_extrude(height=14.35) polygon( points=[[0,0],[5.2,0],[0,5.1]] );
    }

    
    
}

module TubeLid3()
{
    
    translate([111,50+3.4/2,26-hole_d/2]) difference(){
     
        union() {
            translate([0,hole_d/2,0])rotate([0,90,0])cylinder(d=hole_d,h=10);
            translate([-8,hole_d/2,0])rotate([0,90,0])cylinder(d=16,h=10);
            translate([0,0,0]) cube([10,hole_d,hole_d/2]);
            
            
        }
        
        translate([-10,hole_d/2-4,-4]) cube([28,8,8]);
        
        translate([4,6.3,2.8]) cube([7,8,8]);
        //translate([3.9,1.3,2.8]) rotate([0,0,0])cube([7,9,7]);
        
        translate([2,5,-20]) cube([0.5,11,50]);
        
        translate([-1,5,-20]) cube([5,11,12]);
        
        rotate([0,0,45])translate([-6,7,-4]) cube([8,8,8]);
    
    }

    
    
}

module TubeLid4()
{
    
    translate([111,100-5-3.4/2-hole_d,26-hole_d/2]) {
        difference(){
     
        union() {
            translate([0,hole_d/2,0])rotate([0,90,0])cylinder(d=hole_d,h=10);
            translate([-8,hole_d/2,0])rotate([0,90,0])cylinder(d=16,h=10);
            translate([0,0,0]) cube([10,hole_d,hole_d/2]);
            
            
        }
        
        translate([-10,hole_d/2-4,-4]) cube([28,8,8]);
        
        translate([4,10.5-4.1,2.8]) cube([7,8+4.1,8]);
        //translate([3.9,7,3.8]) rotate([-45,0,0])cube([7,7,7]);
        
        translate([2,5,-20]) cube([0.5,11,50]);
        
        translate([-1,5,-20]) cube([5,11,12]);
        
        rotate([0,0,45])translate([-6,7,-4]) cube([8,8,8]);
    
        }
        translate([4.80,5.3,-4])linear_extrude(height=14.35) polygon( points=[[0,0],[5.2,0],[5.2,5.2]] );
    }

    
    
}

module TubeRooms()
{
   
    
    //左侧
    translate([-1,5+3.4/2+hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    translate([-1,50-3.4/2-hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    translate([-1,50+3.4/2+hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    translate([-1,100-5-3.4/2-hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    translate([-1,5+3.4/2,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    translate([-1,50-3.4/2-hole_d,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    translate([-1,50+3.4/2,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    translate([-1,100-5-3.4/2-hole_d,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    //左侧固定螺丝
    translate([5,5+3.4/2+hole_d/2,-1]) cylinder(d=3.4,h=30);
    translate([5,50-3.4/2-hole_d/2,-1]) cylinder(d=3.4,h=30);
    translate([5,50+3.4/2+hole_d/2,-1]) cylinder(d=3.4,h=30);
    translate([5,100-5-3.4/2-hole_d/2,-1]) cylinder(d=3.4,h=30);
    //右侧固定螺丝
    translate([300-5,5+3.4/2+hole_d/2,-1]) cylinder(d=3.4,h=30);
    translate([300-5,50-3.4/2-hole_d/2,-1]) cylinder(d=3.4,h=30);
    translate([300-5,50+3.4/2+hole_d/2,-1]) cylinder(d=3.4,h=30);
    translate([300-5,100-5-3.4/2-hole_d/2,-1]) cylinder(d=3.4,h=30);
    
    
    //左侧后开口
    translate([91,-7.5,0]) {
        translate([5,5+3.4/2+hole_d/2,-1]) cube([20,15,30]);
        translate([5,50-3.4/2-hole_d/2,-1]) cube([20,15,30]);
        translate([5,50+3.4/2+hole_d/2,-1]) cube([20,15,30]);
        translate([5,100-5-3.4/2-hole_d/2,-1]) cube([20,15,30]);
    }
    //右侧后开口
    translate([174+5,-7.5,0]) {
        translate([5,5+3.4/2+hole_d/2,-1]) cube([20,15,30]);
        translate([5,50-3.4/2-hole_d/2,-1]) cube([20,15,30]);
        translate([5,50+3.4/2+hole_d/2,-1]) cube([20,15,30]);
        translate([5,100-5-3.4/2-hole_d/2,-1]) cube([20,15,30]);
    }
    
    
    
    
    // 右侧
    translate([301-hole_height,5+3.4/2+hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    translate([301-hole_height,50-3.4/2-hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    translate([301-hole_height,50+3.4/2+hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    translate([301-hole_height,100-5-3.4/2-hole_d/2,26-hole_d/2])rotate([0,90,0])cylinder(d=hole_d,h=hole_height);
    
    
    
    translate([301-hole_height,5+3.4/2,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    translate([301-hole_height,50-3.4/2-hole_d,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    translate([301-hole_height,50+3.4/2,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    translate([301-hole_height,100-5-3.4/2-hole_d,26-hole_d/2]) cube([hole_height,hole_d,11]);
    
    
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
            
            translate([125,i*25-1,-1]) cube([0.5,11,30]);
            translate([174,i*25-1,-1]) cube([0.5,11,30]);
            
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