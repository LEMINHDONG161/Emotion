% Copy all files in Matlab current directory and type "facialexpression" on
% Matlab command window.
%
% This code has been tested using the JAFFE Database, available at
% http://www.kasrl.org/jaffe.html
%
%
% See also the following article
% http://www.irc.atr.jp/%7Emlyons/pub_pdf/fg98-1.pdf
% 
% 
% 
%
%
%
% First, select an input image clicking on "Select image".
% Then you can
%   - add this image to database (click on "Add selected image to database"
%   - perform facial expression recognition (click on "Facial Expression Recognition" button)
%     Note: If you want to perform facial expression recognition, database has to include 
%     at least one image.
%
% If you choose to add image to database, you have also to insert the corresponding 
% facial expression: 'Happiness','Sadness','Surprise','Anger','Disgust',
% 'Fear' or 'Neutral'.
% For more details please visit http://www.kasrl.org/jaffe.html
%
%
% FUNCTIONS
%
% Select image:                                  read the input image
%
% Add selected image to database:                the input image is added to database and will be used for training
%
% Database Info:                                 show informations about the images present in database.
%
% Facial Expression Recognition:                 facial expression recognition. The selected input image is processed
%
% Delete Database:                               remove database from the current directory
%
% Info:                                          show informations about this software
%
%
% Source code:                                   how to obtain the complete source code
%
% Exit:                                          quit program
%