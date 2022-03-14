function [Image] = PatternsToImage(CellArray)
% The PatternsToImage function takes a cell array of 2x2 uint8 patterns
% (eg. the patterns for the image) and converts it to a greyscale image (a
% 2D uint8 array) so that it can be displayed and saved
% Author: Tyler Kim 2021
% Input
% CellArray - A 2D m x n cell array of 2x2 patterns. Each element of the
% array will be a pattern stored as a 2x2 array of uint8 values (ie.
% greyscale image)
% Output
% Image - 2D array of uint8 valeus (ie a greyscale image) with the pixels
% assembled into a single image. This array will have twice the number of
% rows and twice the number of clumns as the input array (ie. it will be a
% 2m x 2n array)

% Assign variables row and column according to the size of the input cell
% array
[row,column] = size(CellArray);

% Assign the output image as a 2D array of uint8 values which has twice the
% number of columns and rows as the input cell array
Image = uint8(zeros(2*row,2*column));

% Assign each element into Image values
for i = 1:row
    for j = 1:column
        Image(2*i-1,2*j-1) = CellArray{i,j}(1,1);
        Image(2*i-1,2*j) = CellArray{i,j}(1,2);
        Image(2*i,2*j-1) = CellArray{i,j}(2,1);
        Image(2*i,2*j) = CellArray{i,j}(2,2);
    end
end

end

