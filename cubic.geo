/*********************************************************************
 *
 *  Gmsh tutorial 5
 *
 *  Characteristic lengths, arrays of variables, macros, loops
 *
 *********************************************************************/

// We start by defining some target mesh sizes:

lcar1 = .05;
lcar2 = .0005;
lcar3 = .055;

// If we wanted to change these mesh sizes globally (without changing the above
// definitions), we could give a global scaling factor for all characteristic
// lengths on the command line with the `-clscale' option (or with
// `Mesh.CharacteristicLengthFactor' in an option file). For example, with:
//
// > gmsh t5.geo -clscale 1
//
// this input file produces a mesh of approximately 1,300 nodes and 11,000
// tetrahedra. With
//
// > gmsh t5.geo -clscale 0.2
//
// the mesh counts approximately 350,000 nodes and 2.1 million tetrahedra. You
// can check mesh statistics in the graphical user interface with the
// `Tools->Statistics' menu.

// We proceed by defining some elementary entities describing a truncated cube:

Point(1) = {0,0,0,lcar1};
//Point(2) = {0.5,0.5,0,lcar1};
//Point(3) = {0,0.5,0.5,lcar1};
//Point(4) = {0,0,0.5,lcar1};
//Point(5) = {0.5,0,0.5,lcar1};
//Point(6) = {0.5,0,0,lcar1};
//Point(7) = {0,0.5,0,lcar1};
Point(8) = {0,1,0,lcar1};
Point(9) = {1,1,0,lcar1};      Point(10) = {0,0,1,lcar1};
Point(11) = {0,1,1,lcar1};     Point(12) = {1,1,1,lcar1};
Point(13) = {1,0,1,lcar1};     Point(14) = {1,0,0,lcar1};

Line(1) = {8,9};    Line(2) = {9,12};  Line(3) = {12,11};
Line(4) = {11,8};   Line(5) = {9,14};  Line(6) = {14,13};
Line(7) = {13,12};  Line(8) = {11,10}; Line(9) = {10,13};
Line(10) = {10,1};
//Line(11) = {4,5};
//Line(12) = {5,6};
//Line(13) = {6,2};
//Line(14) = {2,1};
//Line(15) = {1,3};
//Line(16) = {3,7};
//Line(17) = {7,2};
//Line(18) = {3,4};
Line(19) = {10,1};
Line(20) = {1,8};  Line(21) = {1,14};

//Line Loop(22) = {-11,-19,-15,-18};   Plane Surface(23) = {22};
//Line Loop(24) = {16,17,14,15};       Plane Surface(25) = {24};
Line Loop(26) = {20,1,5,-21}; 	       Plane Surface(27) = {26};
Line Loop(28) = {-4,-1,-2,-3};         Plane Surface(29) = {28};
Line Loop(30) = {-7,2,-5,-6};          Plane Surface(31) = {30};
Line Loop(32) = {6,-9,19,21};  	       Plane Surface(33) = {32};
Line Loop(34) = {7,3,8,9};             Plane Surface(35) = {34};
Line Loop(36) = {-19,-20,4,-8};        Plane Surface(37) = {36};
//Line Loop(38) = {-14,-13,-12,19};    Plane Surface(39) = {38};


Surface Loop(40) = {35,31,29,37,33,27} ;


Volume(186) = {40} ;

Physical Line (117) = {1,2,3,4,5,6,7,8,9,10,19,20};

Physical Volume(118) = {186};