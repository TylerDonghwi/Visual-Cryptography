 function [AlteredInteger] = AlterByOne(Integer)
% The AlterByOne function adds 1 to an uint8 value in the range 0 to 255
% inclusive, if the value is 255 in which case it subtracts 1.
% Author: Tyler Kim 2021
% Input
% Integer - an integer value somewhere between 0 to 255 inclusive
% Output
% AlteredInteger - A uint8 value that is one more (unless the original value was 255, in which case it is one less)

% Add 1 to the integer if the value is less than 255 and subtract 1 if the
% value is 255, then assigned the output value as the altered integer.
if Integer < 255
    AlteredInteger = Integer + 1;
elseif Integer == 255
    AlteredInteger = Integer - 1;
end

end
