function [Decrypted] = DecryptImage(Cipher, Key)
% The DecryptImage function decrypts a cipher image using the key image
% Author: Tyler Kim 2021
% Input
% Cipher - A 2D array of uint8 values containing the black and white cipher image
% (each pixel will have a value of 0 or 255)
% Key - A 2D array of uint8 values containing the black and white key image
% (each pixel will have a value of 0 or 255)
% Output
% Decrypted - A 2D array of uint8 values (ie greyscale image) containing
% the decrypted image, this will be the same size as they key

% Assign variables row and column according to the size of Key image
[row,column] = size(Key);

% Assign the output Decrypted which has the same number of rows and columns
% as the key images
Decrypted = uint8(zeros(row,column));

% Using nested loop, decrypt the image and find the original image
% cycle through each row
for i = 1:row
    % cycle through each column
    for j = 1:column
        % if the pixel is not "sitting on top of each other" assign the
        % pixel to be black
        if Key(i,j) ~= Cipher(i,j)
            Decrypted(i,j) = 0;
        % otherwiser assign the pixel to be white
        else
            Decrypted(i,j) = 255;
        end
    end
end

end

