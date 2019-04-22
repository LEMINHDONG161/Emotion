 clear all;
fiffFiles = dir('*.tiff'); numfiles = length(fiffFiles);
mydata = cell(1,numfiles);
for k =1:numfiles
mydata{k} = imread(fiffFiles(k).name);
grayImage = mydata{k};
[rows columns numberOfColorBands] = size(grayImage);

localBinaryPatternImage = zeros(size(grayImage));
for row = 2 : rows - 1   
    for col = 2 : columns - 1    
        centerPixel = grayImage(row, col);
        pixel7=grayImage(row-1, col-1) > centerPixel;  
        pixel6=grayImage(row-1, col) > centerPixel;   
        pixel5=grayImage(row-1, col+1) > centerPixel;  
        pixel4=grayImage(row, col+1) > centerPixel;     
        pixel3=grayImage(row+1, col+1) > centerPixel;    
        pixel2=grayImage(row+1, col) > centerPixel;      
        pixel1=grayImage(row+1, col-1) > centerPixel;     
        pixel0=grayImage(row, col-1) > centerPixel;       
        localBinaryPatternImage(row, col) = uint8(...
            pixel7 * 2^7 + pixel6 * 2^6 + ...
            pixel5 * 2^5 + pixel4 * 2^4 + ...
            pixel3 * 2^3 + pixel2 * 2^2 + ...
            pixel1 * 2 + pixel0);
    end  
end 
imwrite(localBinaryPatternImage,sprintf('lbp#%d.fig',k));
end