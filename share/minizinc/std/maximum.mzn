/** @group globals Constrains \a m to be the maximum of the values in \a x.

  Assumptions: |\a x| > 0.
*/
predicate maximum(var int: m, array[int] of var int: x) =
    array_int_maximum(m, x);

/** @group globals Constrains \a m to be the maximum of the values in \a x.

  Assumptions: |\a x| > 0.
*/
predicate maximum(var float: m, array[int] of var float: x) =
    array_float_maximum(m, x);

    % XXX: currently doesn't work:  same problem as 'minimum' above.
%predicate maximum(var set of int: m, array[int] of var set of int: x) =
%    let { int: l = min(index_set(x)),
%          int: u = max(index_set(x)),
%          set of int: uy = ub(x),
%          array[l..u] of var set of uy: y } in
%    y[l] = x[l] /\
%    m = y[u] /\
%    forall (i in l+1 .. u) ( y[i] == max(x[i],y[i-1]) );

