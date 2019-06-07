## Copyright (C) 2019 Anju Laptop
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} costFunction (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Anju Laptop <Anju Laptop@LAPTOP-J5UGJUJA>
## Created: 2019-06-06

function j = costFunction (X,y,theta)

m = size(X,1);
predictions = X*theta;
sqrtErrors = (predictions-y).^2;
j = 1/(2*m) * sum(sqrtErrors);

endfunction