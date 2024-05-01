$fn=128;

b=159;
l=370;

h=7;
w=10;

s=2.1;
v=4;

difference() {
  union() {
    cube([l/2,w,h]);
    translate([0,b-w,0]) cube([l/2,w,h]);
    cube([w,b,h]);

    n=(b-w-w)/(s+v);    
    
    for ( i = [0 : n] ) {
      translate([0,w-s+i*(s+v),0]) cube([l/2,2,2]);
    }

    for ( i = [0 : 8] ) {
      translate([w-s+(l/2-w)/8*i,0,0]) cube([2,b,2]);
    }
  }
  
  translate([w/2,w/2+b/2,-1]) cylinder(10,1.5,1.5);

  translate([w/2,w/2,-1]) cylinder(10,1.5,1.5);
  translate([w/2,b-w/2,-1]) cylinder(10,1.5,1.5);
  
  translate([w/2+l/4,w/2,-1]) cylinder(10,1.5,1.5);
  translate([w/2+l/4,b-w/2,-1]) cylinder(10,1.5,1.5);
  
  translate([w/2+l/2-w,w/2,-1]) cylinder(10,1.5,1.5);
  translate([w/2+l/2-w,b-w/2,-1]) cylinder(10,1.5,1.5);
}
 