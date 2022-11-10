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
## @deftypefn {} {@var{retval} =} Apartenenta (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Maria <Maria@DESKTOP-FB72VJO>
## Created: 2022-05-02

function u = Apartenenta(x, val1,  val2);
  
  a = 1/(val2 - val1);
  b = - val1/(val2 - val1);
  if x>=0 && x<val1
    u = 0;
  endif
  if x>=val1 && x<=val2
    u = a*x + b;
  endif
  if x>val2 && x<=1
    u = 1;
  endif

endfunction
