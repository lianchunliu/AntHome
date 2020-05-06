$fn=100;
// 高15mm

BigBox();

//Rooms();


//scale([1,1,2])Room(50,20);

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

module Rooms()
{
    translate([10,15,20]) Tunnel(270,7);
    translate([5,15,5]) Room(20,15);
    translate([42,15,5]) Room(30,15);
    translate([90,15,5]) Room(30,15);
    translate([175,15,5]) Room(20,12);
    translate([210,15,5]) Room(30,13);
    translate([255,15,5]) Room(25,15);
    
    
    translate([10,33,20]) Tunnel(270,7);
    translate([5,33,5]) Room(30,15);
    translate([52,33,5]) Room(40,15);
    translate([110,33,5]) Room(40,13);
  //  translate([175,33,5]) Room(20,12);
    translate([205,33,5]) Room(30,13);
    translate([250,33,5]) Room(30,15);
    
    
    translate([10,51,20]) Tunnel(270,7);
    translate([5,51,5]) Room(35,15);
    translate([58,51,5]) Room(20,15);
    translate([96,51,5]) Room(30,13);
    translate([142,51,5]) Room(40,12);
    translate([220,51,5]) Room(30,13);
    translate([265,51,5]) Room(13,15);
    
    
    translate([10,69,20]) Tunnel(270,7);
    translate([5,69,5]) Room(20,15);
    translate([42,69,5]) Room(30,15);
    translate([90,69,5]) Room(20,15);
    translate([126,69,5]) Room(24,12);
    translate([200,69,5]) Room(40,13);
    translate([255,69,5]) Room(25,15);
    
    
    translate([10,85,20]) Tunnel(270,7);
    translate([5,85,5]) Room(20,13);
    translate([42,85,5]) Room(30,13);
    translate([90,85,5]) Room(30,13);
    translate([170,85,5]) Room(25,12);
    translate([210,85,5]) Room(30,13);
    translate([255,85,5]) Room(25,13);
    
    translate([150,-18,20]) rotate([0,0,90])Tunnel(26,7);
    
    translate([150-5,10,20]) rotate([0,0,30]) Room(75,7);
    
    translate([150,100-15,20]) rotate([0,0,90])Tunnel(26,7);
    
    translate([150-5,100-10,20]) rotate([0,0,-30]) Room(76,7);
    
    translate([145,4,-1])cube([10,1,40]);
    translate([145,100-4,-1])cube([10,1,40]);
    
    translate([171,20,-1])rotate([0,0,30+90])cube([10,1,40]);
    
    translate([203,38,-1])rotate([0,0,30+90])cube([10,1,40]);
    
    translate([194,56,-1])rotate([0,0,-30+90])cube([10,1,40]);
    
    translate([164,72.2,-1])rotate([0,0,-30+90])cube([10,1,40]);
    
    translate([140,10,-1])rotate([0,0,90])cube([10,1,40]);
    
    translate([164,28,-1])rotate([0,0,90])cube([10,1,40]);
    
    translate([196,46,-1])rotate([0,0,90])cube([10,1,40]);
    
    translate([197,65,-1])rotate([0,0,90])cube([10,1,40]);
    
    translate([140,80,-1])rotate([0,0,90])cube([10,1,40]);
    
}

module BigBox() 
{
    
    difference() {
        union() {
            cube([300,170,30]);
        }

     //   Rooms();
        
        ScrewHole();
     
    }
    

    
}
module DoorSwitchHole2()
{
}


module DoorSwitchHole()
{
    translate([38,0,0]) {
        
        MyTranslateCube(4,4,-3,54-4-15,4,17);// 下出口阀门
        MyTranslateCube(4,4,4,50,4,10);
    }
    
    translate([17,88,0]){
        MyTranslateCube(4,4,-3,55-4-15,4,17);// 下出口阀门
        MyTranslateCube(4,4,4,50,4,10);
    };
    translate([74.6,19,0]){
        MyTranslateCube(4,4,-3,55-4-15,4,17);// 下出口阀门
        MyTranslateCube(4,4,4,50,4,10);
    };
    translate([107.8,2*19,0]){
        MyTranslateCube(4,4,-3,55-4-15,4,17);// 下出口阀门
        MyTranslateCube(4,4,4,50,4,10);
    };
    translate([140.7,3*19,0]){
        MyTranslateCube(4,4,-3,55-4-15,4,17);// 下出口阀门
        MyTranslateCube(4,4,4,50,4,10);
    };
    
    translate([172.7,4*19,0]){
        MyTranslateCube(4,4,-3,55-4-15,4,17);// 下出口阀门
        MyTranslateCube(4,4,4,50,4,10);
    };
    
}
module ScrewHole()
{
        translate([5,5,-1])cylinder(d=3.4,h=32);
        translate([300-5,5,-1])cylinder(d=3.4,h=32);
        translate([5,100-5,-1])cylinder(d=3.4,h=32);
        translate([300-5,100-5,-1])cylinder(d=3.4,h=32);
       
        translate([5,59,-1])cylinder(d=3.4,h=32);
        translate([300-5,59,-1])cylinder(d=3.4,h=32);
        translate([132,59,-1])cylinder(d=3.4,h=32);
            
        translate([116,100-5,-1])cylinder(d=3.4,h=32);
        translate([222,100-5,-1])cylinder(d=3.4,h=32);
            
        translate([116,5,-1])cylinder(d=3.4,h=32);
        translate([222,5,-1])cylinder(d=3.4,h=32);
}

module Cell()
{
    difference() {
        union() {
            translate([0,15+4,0])cube([300,4,30]);
            translate([0,15+4 + 19,0])cube([300,4,30]);
            translate([0,15+4 + 2*19,0])cube([300,4,30]);
            translate([0,15+4 + 3*19,0])cube([300,4,30]);
            
            //第一行
            translate([35,0,0])SmallWall();
            translate([140,0,0])SmallWall();
            translate([180,0,0])SmallWall();
            translate([250,0,0])SmallWall();
            
            //第二行
            translate([55,19,0])SmallWall();
            translate([110,19,0])SmallWall();
            translate([170,19,0])SmallWall();
            translate([200,19,0])SmallWall();
            translate([245,19,0])SmallWall();
            
            //第三行
            translate([30,2*19,0])SmallWall();
            translate([80,2*19,0])SmallWall();
            translate([150,2*19,0])SmallWall();
            translate([210,2*19,0])SmallWall();
            translate([260,2*19,0])SmallWall();
            
            //第四行
            translate([50,3*19,0])SmallWall();
            translate([90,3*19,0])SmallWall();
            translate([130,3*19,0])SmallWall();
            translate([190,3*19,0])SmallWall();
            translate([240,3*19,0])SmallWall();
            
            // 第五行
            translate([110,4*19,0])SmallWall();
            translate([180,4*19,0])SmallWall();
            translate([220,4*19,0])SmallWall();
            
            translate([100+8,0,0])rotate([0,0,30])cube([153,4,18]);
            
            translate([60+6.5,100-24,0])rotate([0,0,30])cube([40,4,18]);
        }
         // 通道洞
        translate([100,0,4])rotate([0,0,30])cube([153+10,4,8]);
        
        ScrewHole();
        DoorSwitchHole();
    }
}

module SmallWall()
{
    difference() {
        cube([4,20,30]);
        translate([-1,4,20])cube([6,6,6]);
    }
}


//DoorSwitch();
module DoorSwitch()
{
    difference() {
        MyTranslateCube(0,0,0,50,12,18);
        MyTranslateCube(4,4,4,55,4,10);
        MyTranslateCube(4,4,-3,54-4-15,4,17);
        //DoorSwitchHole();
    }
    
}

module MyTranslateCube(x,y,z,x1,y1,z1)
{
     translate([x+y*cos(30)/sin(30),y,z])MyCube(x1,y1,z1);
}

      //  MyTranslateCube(4,4,-3,50-4-15,4,17);// 下出口阀门
 //       MyTranslateCube(4,4,4,55,4,10);

//translate([0,0,30])MyCube(50,10,18);
    
    
//MyCube2(50,10,18);
module MyCube(x,y,z)
{
   linear_extrude(height = z, center = false, convexity = 10, twist = 0)
    
    polygon(points=[[0,0],[y/sin(30)*cos(30),y],[y/sin(30)*cos(30)+x,y],[x,0]]);
//        difference() {
//            cube([x,y,z]);
//            rotate([0,0,30])translate([0,0,-1])cube([x,y,z+2]);
//        }
//        translate([x,0,0])intersection() {
//            cube([x,y,z]);
//            rotate([0,0,30])translate([0,0,-1])cube([x,y,z+2]);
//        } 
    
}

//translate([50.1,0,0])MyCube(50,12,18);
module MyCube2(x,y,z)
{
   
        difference() {
            cube([x,y,z]);
            rotate([0,0,30])translate([0,0,-1])cube([x,y,z+2]);
        }
        translate([x,0,0])intersection() {
            cube([x,y,z]);
            rotate([0,0,30])translate([0,0,-1])cube([x,y,z+2]);
        } 
    
}


//translate([100,0,4])rotate([0,0,20])cube([80,4,10]);
//translate([150,30,4])rotate([0,0,160])cube([80,4,10]);
//translate([30,70,4])rotate([0,0,30])cube([80,4,10]);