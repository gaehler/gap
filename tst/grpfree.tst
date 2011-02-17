#############################################################################
##
#W  grpfree.tst                GAP-4 library                    Thomas Breuer
##
#H  @(#)$Id: grpfree.tst,v 4.15 2010/10/10 21:59:28 alexk Exp $
##
#Y  Copyright 1997,    Lehrstuhl D für Mathematik,   RWTH Aachen,    Germany
##
##  To be listed in testinstall.g
##

gap> START_TEST("$Id: grpfree.tst,v 4.15 2010/10/10 21:59:28 alexk Exp $");

gap> g:= FreeGroup( "a", "b" );
<free group on the generators [ a, b ]>
gap> IsWholeFamily( g );
true
gap> IsFinite( g );
false
gap> Size( g );
infinity
gap> gens:= GeneratorsOfGroup( g );
[ a, b ]
gap> a:= gens[1];; b:= gens[2];;
gap> firstfifty:=[];;
gap> iter:= Iterator( g );;
gap> for i in [ 1 .. 50 ] do
>   Add( firstfifty, NextIterator( iter ) );
> od;
gap> firstfifty;     
[ <identity ...>, a, a^-1, b, b^-1, a^2, a^-2, b*a, b^-1*a, b*a^-1, 
  b^-1*a^-1, a*b, a^-1*b, a*b^-1, a^-1*b^-1, b^2, b^-2, a^3, a^-3, b*a^2, 
  b^-1*a^2, b*a^-2, b^-1*a^-2, a*b*a, a^-1*b*a, a*b^-1*a, a^-1*b^-1*a, 
  a*b*a^-1, a^-1*b*a^-1, a*b^-1*a^-1, a^-1*b^-1*a^-1, b^2*a, b^-2*a, 
  b^2*a^-1, b^-2*a^-1, a^2*b, a^-2*b, a^2*b^-1, a^-2*b^-1, b*a*b, b^-1*a*b, 
  b*a^-1*b, b^-1*a^-1*b, b*a*b^-1, b^-1*a*b^-1, b*a^-1*b^-1, b^-1*a^-1*b^-1, 
  a*b^2, a^-1*b^2, a*b^-2 ]
gap> IsDoneIterator( iter );
false
gap> enum:= Enumerator( g );;
gap> first50:=List( [ 1 .. 50 ], x -> enum[x] );;
gap> Print(first50,"\n");
[ <identity ...>, a, a^-1, b, b^-1, a^2, a^-2, b*a, b^-1*a, a*b, a^-1*b, 
  b*a^-1, b^-1*a^-1, a*b^-1, a^-1*b^-1, b^2, b^-2, a^3, a^-3, b*a^2, 
  b^-1*a^2, a*b*a, a^-1*b*a, b*a^-2, b^-1*a^-2, a*b^-1*a, a^-1*b^-1*a, b^2*a, 
  b^-2*a, a^2*b, a^-2*b, b*a*b, b^-1*a*b, a*b*a^-1, a^-1*b*a^-1, b*a^-1*b, 
  b^-1*a^-1*b, a*b^-1*a^-1, a^-1*b^-1*a^-1, b^2*a^-1, b^-2*a^-1, a^2*b^-1, 
  a^-2*b^-1, b*a*b^-1, b^-1*a*b^-1, a*b^2, a^-1*b^2, b*a^-1*b^-1, 
  b^-1*a^-1*b^-1, a*b^-2 ]
gap> List( first50, x -> Position( enum, x ) ) = [ 1 .. 50 ];
true

gap> STOP_TEST( "grpfree.tst", 5000000 );


#############################################################################
##
#E

