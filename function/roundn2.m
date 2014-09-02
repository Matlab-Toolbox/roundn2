function value = roundn2(x, n)
 % ROUNDN2 Round to nearest with 2^n precision.
 %
 % Usage:
 %   ROUNDN2(x, n) rounds the elements of x to the nearest 2^n.
 %  
 % Example:
 %   ROUNDN2(0.25, -1) => 0.5 rounds to nearest 2^-1
 
 value = round(x/(2^n))*(2^n);
 
end