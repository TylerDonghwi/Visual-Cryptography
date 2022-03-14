 function [CipherArray] = EncryptImage(PlainImage, Key)
% The EncryptImage function encrypts a plain image using a key array of patterns (a cell array containing 2x2 patterns), to obtain an encrypted cipher array of patterns (a cell array containing 2x2 patterns)
% Author: Tyler Kim 2021
% Inputs
% PlainImage - A 2D array of uint8 values (ie. a greyscale image)
% containing the black and white plain image to encrypt
% Key - A 2D cell array of 2x2 pattern to act as a key array of patterns.
% Each element of the cell array will be a pattern stored as a 2x2 array of
% uint8 values (ie. a greyscale image)
% Output
% CipherArray - A 2D cell array of 2x2 patterns which is our cipher array of patterns
% (ie. it was created by encrypting our plain image). Each element of the
% array will be a pattern stored as a 2x2 array of uint8 values (ie.
% greyscale image)

% assign variabels row and column according to the size of the plain image
[row,column] = size(PlainImage);

% create a nested loop to encrypt the key element into each PlainImage element
% cycle through each row
for i = 1:row
    % cycle through each column
    for j = 1:column
        % if the pixel is dark, assign to the cipher array of patterns the
        % complement of the pattern from the corresponding position in the
        % key array of patterns.
        if PlainImage(i,j) < 128
            [CipherArray{i,j}] = ImageComplement(Key{i,j});
        % if the pixel is light, assign to the cipher array of patterns the
        % original patern from the corresponding position in the key array
        % of patterns.
        elseif PlainImage(i,j) >= 128
            CipherArray{i,j} = Key{i,j};
        end
    end
end

end