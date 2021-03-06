
module piso()
{
    cube([100,100,3], center=true);
}

module mesa()
{
    //30 pulgadas es el tamano normal de un mesa
    //primer pierna
    translate([-20,-20,1.5])cylinder(h=30,r=1.5);
    //segunda pierna
    translate([-20,20,1.5])cylinder(h=30,r=1.5);
    //tercera pierna
    translate([20,-20,1.5])cylinder(h=30,r=1.5);
    //cuarta pierna
    translate([20,20,1.5])cylinder(h=30,r=1.5);
    
    //tapa de la mesa
    //altura mitad piso(z) + mitad mesa(z) + altura pata
    translate([0,0,33])cube([45,45,3],center=true);
}

module sillaBase()
{
    translate([-40,-7.5,1.5])cylinder(h=18,r=1.5);
    
    translate([-40,7.5,1.5])cylinder(h=18,r=1.5);
    
    translate([-25,-7.5,1.5])cylinder(h=18,r=1.5);
    
    translate([-25,7.5,1.5])cylinder(h=18,r=1.5);
    
    //altura mitad piso(z) + mitad mesa(z) + altura pata
    translate([-32.5,0,21])minkowski()
    {
        cube([18,18,2.5],center=true);
        rotate([90,0,0])cylinder(h=0.5, r=0.5, center=true,$fn=50);
    }
}

module espaldar()
{
    difference(){
    translate([-41.5,0,34])cube([2.5,18,23],center=true);
    translate([-41.5,0,35])scale([1,.75,1.4])sphere(5);     
    }
}

module silla()
{
        sillaBase();
        espaldar();
}

silla();