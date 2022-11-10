## Copyright (C) 2022 Maria
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} Iterative (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Maria <Maria@DESKTOP-FB72VJO>
## Created: 2022-05-02

function R = Iterative(nume, d, esp)
  
  fnume = fopen(nume , "r");
  N = fgetl (fnume);
  N = str2num (N);
  A = zeros(N);
  M = zeros(N);
  L = zeros(1,N);
  ad = zeros(1,N);
  R = ones(1,N);
  u = ones(1,N);
  ok = 1;

  for i = 1:N
    ad = fgetl (fnume);
    ad = str2num (ad);
    for j = 3:ad(2)+2
      A(i,ad(j)) = 1;
    endfor
    L(i) = ad(2);
  endfor

  for i = 1:N
    A(i,i) = 0;
    if A(i,i) == 1
      L(i) = L(i) - 1;
    endif
  endfor

  for i = 1:N
    for j = 1:N
      if A(j,i) == 1
        M(i,j) = 1/L(j);
      endif
    endfor
  endfor

  R = R.*1/N;

  while ok==1
      ref = R;
      R = d.*M.*R + ((1-d)/N).*u;
      if abs(R - ref) < eps
        ok = 0;
      endif
  endwhile
  fclose(fnume);
endfunction
