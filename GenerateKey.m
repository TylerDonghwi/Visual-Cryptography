 function [Key] = GenerateKey(Array, PatternCellArray)
% The GenerateKey function assembles a 2D cell array to act as a key, where
% each array element is a 2x2 uint8 pattenr selected at random. The
% Patterns are passed in using a 1D cell array and then randomly assigned
% to the 2D cell array based on values in a 2D array of random values (that
% range from 1 to 6)
% Author: Tyler Kim 2021
% Inputs
% Array - a 2D array of random integer values between 1 to 6 (m rows and
% n colums)
% PatternCellArray - a 1x6 1D cell array containing 6 patterns (where each
% pattern is stored as a 2x2 uint8 array)
% Output
% Key - A 2D array (m x n cell array containing patterns to to act as a
% key. Each element of the array will be a pattern stored as a 2x2 array of
% uint8 values (i.e. a grayscale image), with the pattern selected from the
% list of patterns based on the corresponding random values contained in the
% 2D array of random integer values.

% Assign variables row and column according to the size of input 2D array
[row, column] = size(Array);

% Nest loop to assign each element of cell array as a 2x2 uint8
% pattern,assigning the pattern according to the integer value of element
% of the 2D array
for i = 1:row
    for j = 1:column
            Key{i,j} = PatternCellArray{Array(i,j)};
    end
end

end

