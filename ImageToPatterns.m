function [CellArray] = ImageToPatterns(Image)
% The ImageToPattern function converts an image back into a cell array of
% 2x2 uint8 patterns so that we can more easily work with the patterns
% Author: Tyler Kim
% Input
% Image - A 2D array of uint8 values containing an image made up of lots of
% black and white pixels
% Output
% CellArray - A 2D cell array of 2x2 patterns extracted form the image.
% Each element of the array will be a pattern stored as a 2x2 array of
% uint8 values

% assign variables row and column according to the size of the image
[row, column] = size(Image);

% Convert image into cell array of 2x2 uint8 patterns
for i = 1:2:row
    for j = 1:2:column
        CellArray{((i+1)/2),((j+1)/2)}(1,1) = Image(i,j);
        CellArray{((i+1)/2),((j+1)/2)}(1,2) = Image(i,j+1);
        CellArray{((i+1)/2),((j+1)/2)}(2,1) = Image(i+1,j);
        CellArray{((i+1)/2),((j+1)/2)}(2,2) = Image(i+1,j+1);
    end
end

end