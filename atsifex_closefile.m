function ret = atsifex_closefile()

% ret = atsifex_closefile()
%
%Description :	This function is used to close the currently opened  SIF file.  
%               This should be called whenever the SIF has been opened using the 
%               ATSIF_ReadAll enumeration and is no longer needed by the calling program. 
%
%Arguments	 :  NONE
%
%Return		 :  Check the help for return code meanings
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

ret = atsifiomex('ATSIF_CloseFile');                                        atsifex_CheckReturnCode(ret);
