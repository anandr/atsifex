function [ret,loaded] = atsifex_isloaded()

% [ret,loaded] = atsifex_isloaded()
%
%Description :	This function is used to determine if a SIF file is currently loaded.  
%                
%
%Arguments	 :  NONE
%
%Return		 :  ret    - Check the help for return code meanings
%               loaded - 1 if loaded, 0 if not
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

[ret,loaded] = atsifiomex('ATSIF_IsLoaded');                                atsifex_CheckReturnCode(ret);
