function [ret,ErrorMessage] = atsifex_CheckReturnCode(ret,varargin)
% [ret,ErrorMessage] = atsifex_CheckReturnCode(ret)
% [ret,ErrorMessage] = atsifex_CheckReturnCode(ret, ParamName,ParamVal)
%       TriggerErrors       false | {true}
%

TriggerErrors       = GetParameter( 'TriggerErrors', varargin, true);

[ST,I]              = dbstack;
ATSIF               = ST(2);
if length(ST)>=3
Caller              = ST(3);
else
Caller.file         = 'Command Line';
Caller.name         = 'CommandLine';
Caller.line         = 1;
end
ErrStack            = ST(2:end);

switch ret
    case 22002, ErrorMessage = 'EVERYTHING_IS_OK';
    case 22003, ErrorMessage = 'SIF_FORMAT_ERROR';
    case 22004, ErrorMessage = 'NO_SIF_LOADED';
    case 22005, ErrorMessage = 'FILE_NOT_FOUND';
    case 22006, ErrorMessage = 'FILE_ACCESS_ERROR';
    case 22007, ErrorMessage = 'DATA_NOT_PRESENT';
    case 22101, ErrorMessage = 'P1INVALID';
    case 22102, ErrorMessage = 'P2INVALID';
    case 22103, ErrorMessage = 'P3INVALID';
    case 22104, ErrorMessage = 'P4INVALID';
    case 22105, ErrorMessage = 'P5INVALID';
    case 22106, ErrorMessage = 'P6INVALID';
    case 22107, ErrorMessage = 'P7INVALID';
    case 22108, ErrorMessage = 'P8INVALID';
end

msg                 = sprintf([ ...
    '          ATSIFEX: Error in fuction %s (<a href="matlab: opentoline(''%s'',%d)">%s, line %d</a>)\n', ...
    '  Function called: %s\n', ...
    '       Error code: %d\n', ...
    '    Error message: %s\n' ], ...    Caller.name, which(Caller.file), Caller.line, Caller.file, Caller.line, ...
    Caller.name, Caller.file, Caller.line, Caller.file, Caller.line, ...
    ATSIF.name, ...
    ret, ...
    ErrorMessage );

if TriggerErrors && ret~=22002
    MsgStruct.message       = msg;
    MsgStruct.identifier    = ['ATSIFEX:' upper(Caller.name) ':' strrep(upper(ErrorMessage),' ','') ];
    MsgStruct.stack         = ErrStack;
    error(MsgStruct);
end

end
