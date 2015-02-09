roundn2
=======

roundn2, rounds a number with 2^n precision. 

It is a power of 2 Verion of [roundn](http://www.mathworks.co.uk/help/map/ref/roundn.html).
For versions of matlab without roundn please see the [Matlab-Toolbox](https://github.com/Matlab-Toolbox/roundn).

Example
--

    roundn2(5, 1) %rounded to precision of 2^1 (2)
    > 6
   
    roundn2(1.45, -1) %Rounded to precision of 2^-1 (0.5)
    > 1.5

Installation
--

To get library clone from github:

    cd to your lib folder
    git clone https://github.com/Matlab-Toolbox/roundn2.git

Add package to path:

    %% Add package to path
    run(['/path_to_package/roundn2/load_toolbox.m']);
