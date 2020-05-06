$fn=100;

difference() {
    cube([20,10,2]);

    translate([5,5,-1])cylinder(d=3.4,h=4);
    translate([15,5,-1])cylinder(d=3.4,h=4);
} 