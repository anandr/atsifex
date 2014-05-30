function [ret,calVal] = atsifex_getpixelcalibration(source, axis, pixel)

% [ret,calVal] = atsifex_getpixelcalibration(source, axis, pixel)
%
%Description :	This function is used to retrieve the calibrated value (e.g. wavelength) 
%               for the corresponding pixel in the source data of the SIF file.
%               The data source is selected using the ATSIF_DataSource 
%               enumeration which has the following values:-
%
%               0 - Signal
%               1 - Reference
%               2 - Background
%               3 - Live
%               4 - Source 
%               
%               The axis is selected using the ATSIF_CalibrationAxis enumeration, which
%               has the follwoing values:-
%
%               0 - X-Axis
%               1 - Y-Axis
%               2 - Z-Axis
%
%Arguments	 :  source   - The enumeration for selecting the SIF file data source
%               axis     - The enumeration for selecting the axis value
%               pixel    - The pixel to interrogate
%
%Return		 :  ret      - Check the help for return code meanings
%               calVal   - The corresponding pixel calibration
%
% 
% This file was generated from the corresponding atsif_* function
% provided by ANDOR MatLab SIF reader
% Author: Andriy Nych, 2013

[ret,calVal] = atsifiomex('ATSIF_GetPixelCalibration', source, axis, pixel);    atsifex_CheckReturnCode(ret);
