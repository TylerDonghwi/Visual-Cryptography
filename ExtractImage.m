 function [BinaryImage] = ExtractImage(Colour)
% The ExtractImage function extracts a black and white image that has been
% embedded within a colour image
% Author: Tyler Kim
% Input
% ColourImage - A 3D array of uint8 values (ie. an RGB colour image) that
% contains a hidden black an white image
% Output
% BinaryImage - A 2D array of uint8 values (ie. a greyscale image) of the black
% and white image that was hidden insider the colour image (each pixel will
% have a value of 0 or 255)

% Assign variables row and column according to the size of 3D array
[row, column,~] = size(Colour);

% Assing the BinaryImage that has the same number of rows and columns as
% the colour image (containing uint8 values)
BinaryImage = uint8(zeros(row,column));

% Using a nested loop find extract the original code
for i = 1:row
    for j = 1:column
        if mod((mod(Colour(i,j,1),2)+mod(Colour(i,j,2),2)+mod(Colour(i,j,3),2)),2) == 1
            BinaryImage(i,j) = 255;
        elseif mod((mod(Colour(i,j,1),2)+mod(Colour(i,j,2),2)+mod(Colour(i,j,3),2)),2) == 0
            BinaryImage(i,j) = 0;
        end
    end
end

end
