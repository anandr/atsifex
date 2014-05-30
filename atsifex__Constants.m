function SifConst = atsifex__Constants

% SifConst.DataCodeTypeArray
% SifConst.DataCodeTypeArrayLen
% 
% SifConst.SourceCodeTypeArray
% SifConst.SourceCodeTypeArrayLen
% 
% SifConst.FileElementCodeTypeArray
% SifConst.FileElementCodeTypeArrayLen
% 
% SifConst.AtsifPropertyNameArray
% SifConst.AtsifPropertyNameArrayLen

% SifConst.DataCodeTypeArray = {
%     0, 'char'               ,@int8
%     1, 'unsigned char'      ,@uint8
%     2, 'int32'              ,@int32
%     3, 'unsigned int32'     ,@uint32
%     6, 'float'              ,@single
%     7, 'double'             ,@double
%     8, 'string'             ,@char
%     };
SifConst.DataCodeTypeArray = {
    0, 'char'               ,@int8
    1, 'uchar'              ,@uint8
    2, 'int32'              ,@int32
    3, 'uint32'             ,@uint32
    6, 'float'              ,@single
    7, 'double'             ,@double
    8, 'string'             ,@char
    };
SifConst.DataCodeTypeArrayLen = size(SifConst.DataCodeTypeArray,1);

SifConst.SourceCodeTypeArray = {
    0, 'Signal'     'Sig'
    1, 'Reference'  'Ref'
    2, 'Background' 'Bkg'
    3, 'Live'       'Liv'
    4, 'Source'     'Src'
    };
SifConst.SourceCodeTypeArrayLen = size(SifConst.SourceCodeTypeArray,1);



SifConst.FileElementCodeTypeArray = {
    0, 'File'
    1, 'Insta'
    2, 'Calib'
    3, 'Andor'
    };
SifConst.FileElementCodeTypeArrayLen = size(SifConst.FileElementCodeTypeArray,1);

SifConst.AtsifPropertyNameArray = {
    'Type'
    'Active'
    'Version'
    'Time'
    'FormattedTime'
    'FileName'
    'Temperature'
    'UnstabalizedTemperature'
    'Head'
    'HeadModel'
    'StoreType'
    'DataType'
    'SIDisplacement'
    'SINumberSubFrames'
    'PixelReadOutTime'
    'TrackHeight'
    'ReadPattern'
    'ReadPatternFullName'
    'ShutterDelay'
    'CentreRow'
    'RowOffset'
    'Operation'
    'Mode'
    'ModeFullName'
    'TriggerSource'
    'TriggerSourceFullName'
    'TriggerLevel'
    'ExposureTime'
    'Delay'
    'IntegrationCycleTime'
    'NumberIntegrations'
    'KineticCycleTime'
    'FlipX'
    'FlipY'
    'Clock'
    'AClock'
    'IOC'
    'Frequency'
    'NumberPulses'
    'FrameTransferAcquisitionMode'
    'BaselineClamp'
    'PreScan'
    'EMRealGain'
    'BaselineOffset'
    'SWVersion'
    'SWVersionEx'
    'MCP'
    'Gain'
    'VerticalClockAmp'
    'VerticalShiftSpeed'
    'OutputAmplifier'
    'PreAmplifierGain'
    'Serial'
    'DetectorFormatX'
    'DetectorFormatZ'
    'NumberImages'
    'NumberSubImages'
    'SubImageHBin'
    'SubImageVBin'
    'SubImageLeft'
    'SubImageRight'
    'SubImageTop'
    'SubImageBottom'
    'Baseline'
    'CCDLeft'
    'CCDRight'
    'CCDTop'
    'CCDBottom'
    'Sensitivity'
    'DetectionWavelength'
    'CountConvertMode'
    'IsCountConvert'
    'XAxisType'
    'XAxisUnit'
    'YAxisType'
    'YAxisUnit'
    'ZAxisType'
    'ZAxisUnit'
    'UserText'
    'IsPhotonCountingEnabled'
    'NumberThresholds'
    'Threshold1'
    'Threshold2'
    'Threshold3'
    'Threshold4'
    'AveragingFilterMode'
    'AveragingFactor'
    'FrameCount'
    'NoiseFilter'
    'Threshold'
    'TimeStamp'
    };
SifConst.AtsifPropertyNameArrayLen = length(SifConst.AtsifPropertyNameArray);

end
