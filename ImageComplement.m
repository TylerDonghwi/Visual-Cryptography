function [ComplementaryImage] = ImageComplement(OriginalImage)
% The ImageComplement functions takes an image and swaps black for white
% and white for black (creates a 2D array of negative greyscale image)
% Author: Tyler Kim
% Input
% OriginalImage - A 2D array of uint8 values (i.e. a greyscale image) containing black and
% white pixels
% Output
% ComplementaryImage - A 2D array of uint values (i.e. a greyscale image)
% of the complement of the input image (OriginalImage) (i.e. black has been
% swapped for white and white for black)

% Assign variables row and column according to the size of the image
[row, column] = size(OriginalImage);

% create the complementary image of the input image (OriginalImage)
for i = 1:row
    for j = 1:column
        OriginalImage(i,j) = 255 - OriginalImage(i,j);
    end
end

% Assign the altered image as the output image
ComplementaryImage = OriginalImage;

end
