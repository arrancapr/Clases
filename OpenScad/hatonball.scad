union(){
translate([0,0,15])polyhedron(
  points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0], 
           [0,0,10]  ],                                 
  triangles=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],             
              [1,0,3],[2,1,3] ]                        
 );
sphere(5);
translate([0,0,10])sphere(10);
}
