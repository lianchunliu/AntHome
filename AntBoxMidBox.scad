$fn=100;
// 高15mm

//rotate([90,0,0])
//BigBox();


//translate([0,0,-4])AntBaseConn();

translate([0,0,-38])AntBase();
      
//    AntHoles5();
    
module AntHoles6()
{
    translate([20,8,-1])cylinder(d=3.4,h=300);
    translate([80,8,-1])cylinder(d=3.4,h=300);
    translate([150,8,-1])cylinder(d=3.4,h=300);
    translate([220,8,-1])cylinder(d=3.4,h=300);
    translate([280,8,-1])cylinder(d=3.4,h=300);
}


 module AntHoles5()
{
    translate([0,-2,0]) color("RED") {
       // translate([150-25/2-8,25,2+8]) cube([8,8,25+4]);
       // translate([150+25/2,0,2+8]) cube([8,8,25+4]);
        
    
        translate([150-25/2-8,50,2+8]) cube([8,8,25+4]);
        translate([150+25/2,75,2+8]) cube([8,8,25+4]);

        translate([150-25/2-8,100,2+8]) cube([8,8,25+4]);
        translate([150+25/2,125,2+8]) cube([8,8,16]);
        
        translate([150-25/2-8,150,10]) cube([8,8,16]);
        
        
        
        translate([150-25/2,25+25,10])rotate([0,0,45]) {cube([43.36,8,8]);cube([33,8,17+4]);}
        translate([150-25/2,25+75,10])rotate([0,0,45]){cube([43.36,8,8]);cube([33,8,17+4]);}
        translate([150-25/2,25+125,10])rotate([0,0,45]){cube([43.36,8,8]);{cube([43.36,8,8]);cube([8,8,16]);}}
        
        
        translate([150-25/2,50,18])rotate([0,0,-45])cube([35.4+12.7,8,25-16+4]);
        translate([150-25/2,25+75,18])rotate([0,0,-45])cube([35.4,8,25-16+4]);
        translate([150-25/2,25+125,10+8])rotate([0,0,-45])cube([35.4,8,8]);
        
        translate([171.5,16,18])cube([8,8,25-16+4]);
        

    }
    
    
    
    
}
    






module AntHoles4()
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

module AntHoles2()
{
    translate([-1,20,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,60,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,100,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,140,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    
    
}

module AntBaseConn()
{
    difference() {
    union() {
    cube([300,150,4]);
    translate([4,15,0])cube([4,150-15,14]);
    translate([300-8,15,0])cube([4,150-15,14]);
    translate([4,150-4,0])cube([300-8,4,16]);
    }
    
    AntHoles1();
    translate([0,0,-200+14])AntHoles2();
    
    translate([20,14,-1])cube([260,120,40]);
    
    
    AntHoles3();
    
    translate([0,200,-4+8])rotate([90,0,0])AntHoles6();
    
    }
    
    
}

module AntBase()
{
    
    
    difference() {
        union() {
            cube([300,165,26+4]);
            translate([150-25/2-8,165,5]) cube([50-8,2,26-10]);
        }
    AntHoles1();
        
    AntHoles3();
        
    AntHoles4();    
        
    AntHoles5();
   
    translate([138,163,-1])rotate([0,0,0])cube([21,0.5,40]);
    }
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


module ScrewHole()
{
   // translate([116,100-5,-1])cylinder(d=3.4,h=32);
    //    translate([222,100-5,-1])cylinder(d=3.4,h=32);
          
//        translate([5,100-5,-1])cylinder(d=3.4,h=20);
//        translate([300-5,100-5,-1])cylinder(d=3.4,h=20);
       
//        translate([5,59,-1])cylinder(d=3.4,h=20);
//        translate([300-5,59,-1])cylinder(d=3.4,h=20);
//      //  translate([132,59,-1])cylinder(d=3.4,h=32);
//            
//        translate([5,5,-1])cylinder(d=3.4,h=20);
//        translate([300-5,5,-1])cylinder(d=3.4,h=20);        
//      //  translate([116,5,-1])cylinder(d=3.4,h=32);
//      //  translate([222,5,-1])cylinder(d=3.4,h=32);
//    
//    translate([0,100,0]) {
//        translate([5,5,-1])cylinder(d=3.4,h=20);
//        translate([300-5,5,-1])cylinder(d=3.4,h=20);        
//        //translate([116,5,-1])cylinder(d=3.4,h=32);
//        //translate([222,5,-1])cylinder(d=3.4,h=32);
//           translate([5,59,-1])cylinder(d=3.4,h=20);
//        translate([300-5,59,-1])cylinder(d=3.4,h=20);
//     
//    }
    
    translate([20,9,-1])cylinder(d=3.4,h=300);
    translate([80,9,-1])cylinder(d=3.4,h=300);
    translate([150,9,-1])cylinder(d=3.4,h=300);
    translate([220,9,-1])cylinder(d=3.4,h=300);
    translate([280,9,-1])cylinder(d=3.4,h=300);
    
    translate([-1,20,5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,60,5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,100,5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,140,5])rotate([0,90,0])cylinder(d=3.4,h=302);
    
    translate([-1,20,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,60,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,100,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    translate([-1,140,200-5])rotate([0,90,0])cylinder(d=3.4,h=302);
    
    for (x=[20:54:200]) {
        translate([-1,145,x])rotate([0,90,0])cylinder(d=3.4,h=302);
    }
    
     for (x=[20:54:200]) {
        translate([-1,10,x])rotate([0,90,0])cylinder(d=3.4,h=302);
    }
}


module Trangle(x,y,z) {
 linear_extrude(height = z, center = false, convexity = 10, twist = 0)
    
    polygon(points=[[0,0],[0,y],[x,0]]);
}

module SmallWall()
{
    difference() {
        cube([4,20,30]);
        translate([-1,4,20])cube([6,6,6]);
    }
}




//translate([100,0,4])rotate([0,0,20])cube([80,4,10]);
//translate([150,30,4])rotate([0,0,160])cube([80,4,10]);
//translate([30,70,4])rotate([0,0,30])cube([80,4,10]);