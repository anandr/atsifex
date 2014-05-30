function [ret,left,bottom,right,top,hBin,vBin] = atsifex_getsubimageinfo(source, index)

% [ret,left,bottom,right,top,hBin,vBin] = atsifex_getsubimageinfo(source, index)
%
%Description :	This function is used to retrieve the information about each sub-image in 
%               the SIF file. The data source is selected using the ATSIF_DataSource 
%               enumeration which has the following values:-
%
%               0 - Signal
%               1 - Reference
%               2 - Background
%               3 - Live
%               4 - Source 
%
%Arguments	 :  source - The enumeration for selecting the SIF file data source
%               index  - The sub-image index
%
%Return		 :  ret    - Check the help for return code meanings
%               left   - The left coordinate of the sub-image
%               bottom - The bottom coordinate of the sub-image
%               right  - The right coordinate of the sub-image
%               top    - The top coordinate of the sub-image
%               hBin   - The horizontal binning used in the selected sub-image
%               vBin   - The vertical binning used in the selected sub-image
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

[ret,left,bottom,right,top,hBin,vBin] = atsifiomex('ATSIF_GetSubImageInfo', source, index);         atsifex_CheckReturnCode(ret);
