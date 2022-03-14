 function [PatternCellArray] = CreatePatterns()
% CreatesPattern function creates a 1D cell array containing six special
% 2x2 pattersn of uint8 values, these patterns will be used for key
% generation
% Author: Tyler Kim 2021
% Input - none
% Output
% PatternCellArray - A single 1x6 cell array of patterns. It will contain 6
% 2x2 patters in order of bottom 2 black, top 2 black, left 2 black, right
% 2 black, leading diagonal black, off diagonal black; each pattern will be
% stored as a 2x2 uint8 value array (i.e. greyscale image)

% assign each pattern as each cell array element
PatternCellArray = {uint8([255,255;0,0]),uint8([0,0;255,255]),uint8([0,255;0,255]),uint8([255,0;255,0]),uint8([0,255;255,0]),uint8([255,0;0,255])};

end
