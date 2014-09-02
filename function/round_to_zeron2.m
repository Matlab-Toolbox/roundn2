function value = round_to_zeron2(x, n)

 % Round to zero with 2^n precision
 value = fix(x/(2^n))*(2^n);
 
end
