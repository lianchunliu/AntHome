$fn=100;

tube_gap = 300/11;
box_size=8.5;
box_gap = tube_gap/2-box_size;

SideTubeHome();

//translate([2.25,10,40])Steps();

module SideTubeHome()
{
    difference() {
        union() {
            cube([300,60,26]);
            translate([300,10,5])cube([1,40,26-10]);
        }
        translate([0,10,5])cube([1,40,26-10]);
        
        ScrewHoles();
        //translate([0,30,0])ScrewHoles();
        
        translate([2.5,10,0])Steps();
        
    }
    
}


module Steps()
{   
    color("RED")
    for (i = [0:12]) {
        translate([(box_size+box_gap) *2 * i,0,10])cube([box_size,box_size,17]);
        translate([(box_size+box_gap) *2 * i -(box_size+box_gap) ,2*box_size+box_gap,10])cube([box_size,box_size,17]);
        translate([(box_size+box_gap) *2 * i -(box_size+box_gap) ,2*box_size+box_gap,10])cube([box_size,box_size+10,8]);
        
        translate([(box_size+box_gap) *2 * i,box_size,10])rotate([0,0,45])translate([0, -box_size*sqrt(2)/2,0])cube([box_size/sqrt(2),(box_size*3/2+box_gap)*sqrt(2),8]);
        
        translate([(box_size+box_gap) *2 * i,box_size,2+8+8])rotate([0,0,-45])cube([box_size/sqrt(2),(3/2*box_size+box_gap)*sqrt(2),8+1]);
        
    }
    
    color("GREEN")
    for (i = [0:9]) {
        
      //  translate([(box_size+box_gap) *2 * i + box_size+box_gap,3*box_size+box_gap,10])cube([6,5,48]);
        
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6,2+2*box_size+box_gap+10,2])cube([24,19,48]);
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-6 + 24/2+7,8+2*box_size+box_gap+10+4,-1])cylinder(d=3.4,h=30);
        
        translate([(box_size+box_gap) *2 * i + box_size+box_gap-1,0+2*box_size+box_gap+10,-1])cube([11,0.5,30]);
        
        translate([(box_size+box_gap) *2 * i + box_size+box_gap+4,2*box_size+box_gap-8,-1])rotate([0,0,45])cube([11,0.5,30]);
    }
    
     translate([(box_size+box_gap) *2 * 0 + box_size+box_gap-15.5,2*box_size+box_gap-12.5,-1])rotate([0,0,45])cube([11,0.5,30]);
    
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
