$fn=100;

tube_gap = 300/11;
box_size=8.5;
box_gap = tube_gap/2-box_size;

//SideTubeHome();

//translate([2.25,10,40])Steps();

projection(){
    HomeLid();
    translate([0,63,0])HomeLid();
    translate([0,63+63,0])HomeLid();
}

//rotate([90,0,0])
//TubeLid();

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
        translate([10.3+10+2,44+2,2.1+12])rotate([-90,0,0])cylinder(d=20.1,h=18);
        translate([16.3,30,10])cube([8,50,8]);
        
        translate([(box_size+box_gap) *2 * 0 + box_size+box_gap-6 + 24/2+7+2.5,8+2*box_size+box_gap+10+4+10,-1])cylinder(d=3,h=10);
    }
    
    difference() {
        translate([10.3+10+2,44+2,2.1+12])rotate([-90,0,0])cylinder(d=16-0.1,h=14);
     
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
