function value = floorn2(x, n)

 % Round to -inf with 2^n precision
 value = floor(x/(2^n))*(2^n);
end
