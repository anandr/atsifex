function [ret,data] = atsifex_getallframes(source, size)

% [ret,data] = atsifex_getallframes(source, size)
%
%Description :	This function is used to retrieve all the frames of data in the SIF file.
%               The data source is selected using the ATSIF_DataSource 
%               enumeration which has the following values:-
%
%               0 - Signal
%               1 - Reference
%               2 - Background
%               3 - Live
%               4 - Source 
%
%Arguments	 :  source - The enumeration for selecting the SIF file data source
%               size   - The number of pixels in the float array
%
%Return		 :  ret    - Check the help for return code meanings
%               data   - The array of float data containing all frames in the SIF file
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

[ret,data] = atsifiomex('ATSIF_GetAllFrames', source, size);                atsifex_CheckReturnCode(ret);
