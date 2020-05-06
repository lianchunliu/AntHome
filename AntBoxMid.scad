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
    
    translate([150,161,20]) rotate([0,0,90])Tunnel(5,7);
    translate([153,154,20]) rotate([0,0,180+30])Tunnel(68,7);
    
    translate([90,114,53]) rotate([0,90,90])Tunnel(26,7);
    
    
    translate([90-2,118,20]) rotate([0,0,90+60 + 180])Room(197.8,7);
    
}

module AntHoles4()
{
     translate([5,160,-1])cylinder(d=3.4,h=52);
        translate([300-5,160,-1])cylinder(d=3.4,h=52);
        
        translate([116,160,-1])cylinder(d=3.4,h=52);
        translate([222,160,-1])cylinder(d=3.4,h=52);
    
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
    cube([300,165,34]);
    AntHoles1();
        
    AntHoles3();
        
    AntHoles4();    
        
    AntHoles5();
   
    translate([145,160,-1])rotate([0,0,0])cube([10,1,40]);
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

module BigBox() 
{
    translate([30,0,200-4])rotate([0,90,0])Trangle(30,14,40);
    translate([90,0,200-4])rotate([0,90,0])Trangle(30,14,50);
    translate([160,0,200-4])rotate([0,90,0])Trangle(30,14,50);
    translate([230,0,200-4])rotate([0,90,0])Trangle(30,14,40);
    
    translate([30+40,0,4])rotate([0,-90,0])Trangle(30,14,40);
    translate([90+50,0,4])rotate([0,-90,0])Trangle(30,14,50);
    translate([160+50,0,4])rotate([0,-90,0])Trangle(30,14,50);
    translate([230+40,0,4])rotate([0,-90,0])Trangle(30,14,40);
    
    difference() {
        union() {
         //   cube([300,163,4]);
         //   translate([40-4,30+100-8,0]) cube([16+8,16+8+17,12]);
            translate([0,0,0])cube([300,4,200]);
            
            translate([0,0,0])cube([300,14,4]); // main
            translate([0,0,200-4])cube([300,14,4]);
      //      translate([10,150-4,0])cube([300-20,4,30]);
      //      translate([0,150-4,40-8])cube([300,8,4]);
            
       //     translate([10,0,0])cube([4,150,30]);
       //     translate([290-4,0,0])cube([4,150,30]);
           
       //     translate([300-10,0,30-4])cube([10,150,4]);
        //     translate([0,0,30-4])cube([10,150,4]);
            
        //    translate([36,122,0])cube([38,8,20]);
            
        //    translate([71.7,126.7,0])rotate([0,0,-35])cube([220,4,15]);
            
        //    translate([0,0,30])cube([300,4,10]);
        //    translate([0,150-4,30])cube([300,4,10]);//todo
            translate([0,0,0])cube([4,150,200]);
            translate([300-4,0,0])cube([4,150,200]);
        }
  
     //   translate([40,30+100,-1]) cube([16,16,40]);
     //   translate([40-2,30+100-2,4]) cube([16+4,16+4+16,4]);
        ScrewHole();
        
        translate([-10,15,10])cube([380,120,180]);

    }
    for (x = [13:15:110]) {
        translate([0,15+x,10])cube([4,2,180]);
    }
    for (x = [13:15:190]) {
        translate([0,10,10+x])cube([4,131,2]);
    }
    
    for (x = [13:15:110]) {
        translate([300-4,15+x,10])cube([4,2,180]);
    }
    for (x = [13:15:190]) {
        translate([300-4,10,10+x])cube([4,131,2]);
    }
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