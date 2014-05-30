function ret = atsifex_setfileaccessmode(readmode)

% ret = atsifex_setfileaccessmode(readmode)
%
%Description :	This function is used to select if the entire SIF file should be read 
%               or just the header section.  The read mode determines if the whole file 
%               or just the header information is read.
%
%Arguments	 : 0 - Read all
%              1 - Header Only
%
%Return		 : Check the help for return code meanings
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

ret = atsifiomex('ATSIF_SetFileAccessMode',readmode);                       atsifex_CheckReturnCode(ret);
