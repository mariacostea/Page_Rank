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
## @deftypefn {} {@var{retval} =} PR_Inv (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Maria <Maria@DESKTOP-FB72VJO>
## Created: 2022-05-02

function B = PR_Inv(A)
  
  [m n] = size(A);
  Q = zeros(m,n);
  R = zeros(n);

  for j = 1 : n
    for i = 1 : j-1
        R(i,j) = Q(:,i)' * A(:,j);
    endfor

    s = zeros(m,1);
    for i = 1 : j-1
      s = s + R(i,j) * Q(:,i);
    endfor

    aux = A(:,j) - s;
    R(j,j) = norm(aux,2);
    Q(:,j) = aux/R(j,j);
  endfor
  B = R.^(-1) * Q';
endfunction
