$fn=100;


difference() {
    union() {
        cube([30,16,150]);
        translate([0,0,0])cube([30,20+16,10]);
        translate([0,10+16,0])cube([30,10,80]);
    }
    
    
   // translate([11,4,10])cube([8,8,100]);
    translate([15,8,-1])cylinder(d=8,h=130);
    
    translate([4,2,110])cube([30-8,12,35]);
    
    for (i = [0:5]) {
        
        translate([4+4*i,-2,110])cube([2,32,35]);
        translate([4+4*i,2,130])cube([2,12,35]);
        
    }
    
    translate([-1,4,110])cube([55,2,35]);
    translate([-1,4+4,110])cube([55,2,35]);
   // translate([-1,4+8,110])cube([55,2,35]);
    
}
//translate([10,0,0])cube([10,50,10]);