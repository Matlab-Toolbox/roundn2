restoredefaultpath; matlabrc % Clear path
clear import; % clear packages to test correct library

%% Add functions to path
run('../../roundn2/load_toolbox');

error_count = 0;
pass_count  = 0;

%% Test vectors
  test ={}; 
  test(end+1).input =   roundn2( 1.6,  0);   test(end).expect =        2 ;
  test(end+1).input =   roundn2( 1.4,  0);   test(end).expect =        1 ;
  test(end+1).input =   roundn2(-1.4,  0);   test(end).expect =       -1 ;
  test(end+1).input =   roundn2(-1.6,  0);   test(end).expect =       -2 ;

  test(end+1).input =   roundn2( 1.6, -1);   test(end).expect =        1.5 ;
  test(end+1).input =   roundn2( 1.4, -1);   test(end).expect =        1.5 ;
  test(end+1).input =   roundn2(-1.4, -1);   test(end).expect =       -1.5 ;
  test(end+1).input =   roundn2(-1.6, -1);   test(end).expect =       -1.5 ;

  %% The tests
  for vector=1:size(test,2)
     if (  ~isequal(test(vector).input, test(vector).expect)  )
       disp('roundn() Failed ')
       error_count = error_count + 1;
     else
       pass_count  = pass_count  + 1;
     end
  end
   
%% ceiln tests
  test ={};
  test(end+1).input =   ceiln2( 1.6,  0);  test(end).expect =        2 ;
  test(end+1).input =   ceiln2( 1.4,  0);  test(end).expect =        2 ;
  test(end+1).input =   ceiln2(-1.4,  0);  test(end).expect =       -1 ;
  test(end+1).input =   ceiln2(-1.6,  0);  test(end).expect =       -1 ;
  
  test(end+1).input =   ceiln2( 1.6, -1);   test(end).expect =        2 ;
  test(end+1).input =   ceiln2( 1.4, -1);   test(end).expect =      1.5 ;
  test(end+1).input =   ceiln2(-1.4, -1);   test(end).expect =     -1.0 ;
  test(end+1).input =   ceiln2(-1.6, -1);   test(end).expect =     -1.5 ;
  
  for vector=1:size(test,2)
     if (  ~isequal(test(vector).input, test(vector).expect)  )
       disp('ceiln() Failed ')
       error_count = error_count + 1;
     else
       pass_count  = pass_count  + 1;
     end
  end
  
 
  %% floorn tests
  test ={};
  test(end+1).input =   floorn2( 1.6,  0);   test(end).expect =        1 ;
  test(end+1).input =   floorn2( 1.4,  0);   test(end).expect =        1 ;
  test(end+1).input =   floorn2(-1.4,  0);   test(end).expect =       -2 ;
  test(end+1).input =   floorn2(-1.6,  0);   test(end).expect =       -2 ;
  
  test(end+1).input =   floorn2( 1.6, -1);   test(end).expect =        1.5 ;
  test(end+1).input =   floorn2( 1.4, -1);   test(end).expect =        1.0 ;
  test(end+1).input =   floorn2(-1.4, -1);   test(end).expect =       -1.5 ;
  test(end+1).input =   floorn2(-1.6, -1);   test(end).expect =       -2.0 ;
  
  for vector=1:size(test,2)
     if (  ~isequal(test(vector).input, test(vector).expect)  )
       disp('floorn() Failed ')
       error_count = error_count + 1;
     else
       pass_count  = pass_count  + 1;
     end
  end
  
  %% round_to_zeron tests
  test ={};
  test(end+1).input =   round_to_zeron2( 1.6,  0);   test(end).expect =        1 ;
  test(end+1).input =   round_to_zeron2( 1.4,  0);   test(end).expect =        1 ;
  test(end+1).input =   round_to_zeron2(-1.4,  0);   test(end).expect =       -1 ;
  test(end+1).input =   round_to_zeron2(-1.6,  0);   test(end).expect =       -1 ;
  
  test(end+1).input =   round_to_zeron2( 1.6, -1);   test(end).expect =        1.5 ;
  test(end+1).input =   round_to_zeron2( 1.4, -1);   test(end).expect =        1.0 ;
  test(end+1).input =   round_to_zeron2(-1.4, -1);   test(end).expect =       -1 ;
  test(end+1).input =   round_to_zeron2(-1.6, -1);   test(end).expect =       -1.5 ;
  
  for vector=1:size(test,2)
     if (  ~isequal(test(vector).input, test(vector).expect)  )
       disp('round_to_zeron() Failed ')
       error_count = error_count + 1;
     else
       pass_count  = pass_count  + 1;
     end
  end
  
  
  %% round_away_zeron tests
  test ={};
  test(end+1).input =   round_away_zeron2( 1.6,  0);   test(end).expect =        2 ;
  test(end+1).input =   round_away_zeron2( 1.4,  0);   test(end).expect =        2 ;
  test(end+1).input =   round_away_zeron2(-1.4,  0);   test(end).expect =       -2 ;
  test(end+1).input =   round_away_zeron2(-1.6,  0);   test(end).expect =       -2 ;
  
  test(end+1).input =   round_away_zeron2( 1.6, -1);   test(end).expect =        2.0 ;
  test(end+1).input =   round_away_zeron2( 1.4, -1);   test(end).expect =        1.5 ;
  test(end+1).input =   round_away_zeron2(-1.4, -1);   test(end).expect =       -1.5 ;
  test(end+1).input =   round_away_zeron2(-1.6, -1);   test(end).expect =       -2.0 ;
  
  for vector=1:size(test,2)
     if (  ~isequal(test(vector).input, test(vector).expect)  )
       disp('round_away_zeron() Failed ')
       error_count = error_count + 1;
     else
       pass_count  = pass_count  + 1;
     end
  end
  
  %% Test Status Report
  if error_count > 0
    disp(['Test FAILED : ', num2str(pass_count), ' passes and ',num2str(error_count),' fails'])
  else
    disp(['Test Passed : ', num2str(pass_count), ' checks ran '])
  end
















