function [ret,versH,versL] = atsifex_getstructureversion(element)

% [ret,versH,versL] = atsifex_getstructureversion(element)
%
%Description :	This function is used to retrieve the version of each structure element 
%               in the SIF file.  The structure element is selected using the 
%               ATSIF_StructureElement enumeration which has the following values:-
%
%               0 - File
%               1 - Insta
%               2 - Calib
%               3 - Andor
%
%Arguments	 :  element - The enumeration for selecting the SIF file structure element
%
%Return		 :  ret    - Check the help for return code meanings
%               versH  - The high component of the version number
%               versL  - The low component of the version number
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

[ret,versH,versL] = atsifiomex('ATSIF_GetStructureVersion', element);       atsifex_CheckReturnCode(ret);
