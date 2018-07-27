function [ROW, N, COL, LN] = fourbase(A)
  [m,n] = size(A);
  r = rank(A);
  E = elim(A);
  [R, pivcol] = rref(A);
  ROW = R(1:r,:)';
  N = nullbasis(R);
  COL = A(:, pivcol);
  LN = E((r+1):m, :)';