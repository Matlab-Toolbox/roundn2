function value = ceiln2(x, n)

 % Round to +inf with 2^n precision
 value = ceil(x/(2^n))*(2^n);
 
end
