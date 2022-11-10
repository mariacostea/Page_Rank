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
## @deftypefn {} {@var{retval} =} PageRank (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Maria <Maria@DESKTOP-FB72VJO>
## Created: 2022-05-02

function [R1 R2] = PageRank(nume, d, eps)
  
  fnume = fopen(nume , "r");
  name = [nume ".out"];
  fout = fopen(name, "w");
  N = fgetl (fnume);
  N = str2num (N);
  w = zeros(1,N);
  v = zeros(1,N);
  
  R1 = Iterative(nume, d, eps);
  R2 = Algebraic(nume, d);
  
  fprintf(fout, "%d\n", N);
  fprintf(fout, "%f\n\n" ,R1);
  fprintf(fout, "%f\n\n" ,R2);

  for i = 1:N
	  M = fgetl(fnume);
  endfor
  
  for i = 1:N
    v(i) = i;
  endfor

  val1 = fgetl(fnume);
  val1 = str2num(val1);
  val2 = fgetl(fnume);
  val2 = str2num(val2);
  
  for i = 1:N-1
    for j = i+1:N
      if R2(j) < R2(i)
        aux = R2(j);
        R2(j) = R2(i);
        R2(i) = aux;
        aux = v(i);
        v(i) = v(j);
        v(j) = aux;
      endif
    endfor
  endfor
  
  for i = 1:N
    w(i) = Apartenenta(R2(i), val1, val2);
  endfor
  
  for i = 1:N
    fprintf(fout , "%d %d %f\n" ,i ,v(i) ,w(i));
  endfor
  fclose(fnume);
  fclose(fout);
  
endfunction
