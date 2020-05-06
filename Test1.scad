$fn=100;



    
difference()
{
    cube([30,30,30]);

    
    translate([18,10,0])rotate([0,0,90]) {
        translate([2,4,-1]) cube([0.1,11,40]);
        translate([5,4,-1]) cube([0.2,11,40]);
        translate([8,4,-1]) cube([0.3,10.8,40]);
        translate([11,4,-1]) cube([0.4,10.5,40]);
    }
    
    translate([17,4,-1]) cube([0.1,21,40]);
    translate([20,4,-1]) cube([0.2,21,40]);
    translate([23,4,-1]) cube([0.3,20.8,40]);
    translate([26,4,-1]) cube([0.4,20.5,40]);
    //}
}