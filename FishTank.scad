$fn=100;


//Switch();

XiaomiSwitch();

module XiaomiSwitch()
{
    difference() {
        union() {
        cube([50,20, 160]);
        translate([0,-20,0])cube([50,10, 30]);
        translate([0,-20,0])cube([50,40, 10]);
        }
        
        translate([5,-1,10])cube([40,16,161]);
        translate([15,-1,10])cube([20,54,161]);
    }
    
    translate([0,0,155])cube([50,20, 5]);
    
}

module Switch()
{
    difference() {
        
        cube([18,8+8,30]);
        translate([4,-1,4])cube([10,20,30]);
        
    }
    
    translate([14,0,30-2])cube([20,4,2]);
    translate([14,8+4,30-2])cube([20,4,2]);
}


//ThreeWay();

module ThreeWay()
{
    difference() {
        union() {
    cube([20,40,20]);
    translate([10,10,-20])cylinder(d=19,h=60);
        }
        
    translate([10,10,10])rotate([-90,0,0])cylinder(d=6.5,h=60);
        translate([10,30,10])rotate([-90,0,0])cylinder(d=10,h=60);
        translate([10,10,-21])cylinder(d=15,h=62);
    // 16,21
    }
}


module TaskFilter() 
{
difference() {
    union() {
        cube([30,16,150]);
        translate([0,0,0])cube([30,20+16,10]);
        translate([0,10+16,0])cube([30,10,80]);
        translate([0,-8,100])cube([30,16,50]);
    }
    
    
   // translate([11,4,10])cube([8,8,100]);
    translate([15,8,-1])cylinder(d=8,h=130);
    
    translate([4,-6,110])cube([30-8,20,35]);
    
    for (i = [0:5]) {
        
        translate([4+4*i,-10,110])cube([2,32,35]);
        translate([4+4*i,-6,130])cube([2,20,35]);
        
    }
    
    translate([-1,-4,110])cube([55,2,35]);
    translate([-1,0,110])cube([55,2,35]);
    translate([-1,4,110])cube([55,2,35]);
    translate([-1,8,110])cube([55,2,35]);
   // translate([-1,4+8,110])cube([55,2,35]);
    
}
}
//translate([10,0,0])cube([10,50,10]);