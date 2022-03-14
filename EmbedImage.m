 function [Embedded] = EmbedImage(Binary, Colour)
% The EmbedImage function embeds a binary iamge stored as a grayscale image
% inside another colour image (i.e. a 3D array of uint8 valus representing
% an RGB image
% Author: Tyler Kim
% Input
% GreyImage - A 2D array of uint8 values (a greyscale image) of the black and white
% image to embed inside the colour image. Pixel values will either be 0 or
% 255.
% ColourImage - A 3D array of uint8 values (an RGB colour image) that the
% black and white image will be embedded into.
% Output
% Embedded - A 3D array of uint8 values (an RGB colour image) that contains
% a hidden black and white image

% Assign row and column according to the size of the 2D grey image
[row, column] = size(Binary);

% Embed the grey image to the colour image
% Cycle through each row
for i = 1:row
    % Cycle through each column
    for j = 1:column
        % if the pixel in the binary image is black and the sum of each
        % layer of corresponding pixel in the colour image is an odd
        % number, alter the red value by 1 to make it even
        if Binary(i,j) == 0
            if mod((mod(Colour(i,j,1),2)+mod(Colour(i,j,2),2)+mod(Colour(i,j,3),2)),2) == 1
                [Colour(i,j,1)] = AlterByOne(Colour(i,j,1));
            end
        % if the pixel in the binary image is black and the sum of each
        % layer of corresponding pixel in the colour image is an even
        % number, alter the red value by 1 to make it odd    
        elseif Binary(i,j) == 255
            if mod((mod(Colour(i,j,1),2)+mod(Colour(i,j,2),2)+mod(Colour(i,j,3),2)),2) == 0
                [Colour(i,j,1)] = AlterByOne(Colour(i,j,1));
            end
        end
    end
end

% Assign the altered image as the output image
Embedded = Colour;

 end
