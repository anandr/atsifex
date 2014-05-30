function ret = atsifex_closefile_gracefully()

% atsifex_closefile_gracefully()
%
%Description :	This function gracefully closes opened sif file, if any
%
%Arguments	 :  NONE
%
%Return		 :  NONE
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

[ret,FileLoaded] = atsifex_isloaded();                                      atsifex_CheckReturnCode(ret);
if FileLoaded
    ret = atsifex_closefile();                                              atsifex_CheckReturnCode(ret);
end
end
