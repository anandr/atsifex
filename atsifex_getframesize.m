function [ret,size] = atsifex_getframesize(source)

% [ret,size] = atsifex_getframesize(source)
%
%Description :	This function is used to retrieve the number of pixels in each frame 
%               in the SIF file.  The data source is selected using the ATSIF_DataSource 
%               enumeration which has the following values:-
%
%               0 - Signal
%               1 - Reference
%               2 - Background
%               3 - Live
%               4 - Source 
%
%Arguments	 :  source - The enumeration for selecting the SIF file data source
%
%Return		 :  ret    - Check the help for return code meanings
%               size   - The number of pixels in each frame in the SIF file
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

[ret,size] = atsifiomex('ATSIF_GetFrameSize', source);                      atsifex_CheckReturnCode(ret);
