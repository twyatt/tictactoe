function [ value ] = same( array )
%SAME Checks if all the values in the specified array have the same value.
%   Determines if the values contained in the provided array are the same,
%   if they are then the value is returned, otherwise 0 is returned.

value = 0;
if (~nnz(diff(array)) && array(1))
    value = array(1);
end

end

