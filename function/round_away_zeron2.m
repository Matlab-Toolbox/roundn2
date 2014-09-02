function value = round_away_from_zeron2(x, n)

 % Round away from Zero with 2^n precision
 b     = x/(2^n);
 value =  ceil(abs(b)).*sign(b) * (2^n);
 
end
