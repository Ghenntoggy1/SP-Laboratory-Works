% Prerequisites
random_seed_1 = 1;
rng(random_seed_1);

% 1.1 Display the image.
image = imread("Individual_Work_4/Images/img_1.png");
cropped_region = image(1+(1:256), 1+(129:384), :);
fprintf('Cropped region size: %d x %d x %d\n', size(cropped_region));
figure(1);
imshow(image);
title('\textbf{Original Image}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

figure(2);
imshow(cropped_region);
title('\textbf{Cropped Region $\mathbf{256\times256}$ of the Original Image}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 1.2 Add 128 pixels
c1 = imadd(cropped_region, 128);

figure(3);
imshow(c1);
title(['\textbf{Cropped Region $\mathbf{256\times256}$ ' ...
    'with Addition of $128$ Pixels}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 1.3 Subtract 128 pixels
c2 = imsubtract(cropped_region, 128);

figure(4);
imshow(c2);
title(['\textbf{Cropped Region $\mathbf{256\times256}$ ' ...
    'with Subtraction of $\mathbf{128}$ Pixels}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 1.4 Divide by 2
c3 = imdivide(cropped_region, 2);

figure(5);
imshow(c3);
title(['\textbf{Cropped Region $\mathbf{256\times256}$ ' ...
    'with Division by 2}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 1.5 Multiply by 2
c4 = immultiply(cropped_region, 2);

figure(6);
imshow(c4);
title(['\textbf{Cropped Region $\mathbf{256\times256}$ ' ...
    'with Multiplication by 2}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 1.6 Multiply by 0.5 and add 128
c5 = imadd(immultiply(cropped_region, 0.5), 128);

figure(7);
imshow(c5);
title(['\textbf{Cropped Region $\mathbf{256\times256}$ ' ...
    'with Multiplication by 0.5 and Addition of 128}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 2.1 Histogram Color Image
R=imhist(cropped_region(:, :, 1));
G=imhist(cropped_region(:, :, 2));
B=imhist(cropped_region(:, :, 3));

figure(13);
plot(R, 'r', 'LineWidth', 1.5);
hold on; 
plot(G, 'g', 'LineWidth', 1.5);
hold on;
plot(B, 'b', 'LineWidth', 1.5);
legend({'\textbf{Red channel}', ...
    '\textbf{Green channel}', ...
    '\textbf{Blue channel}'}, ...
    'Interpreter', 'latex', ...
    'Location', 'best');
title('\textbf{Histogram of the Cropped Region}', ...
    'Interpreter', ...
    'latex');
xlabel('\textbf{Intensity Value}', 'Interpreter', 'latex'); 
ylabel('\textbf{Count}', 'Interpreter', 'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
axis tight;
waitfor(gcf);

% 2.2 Histogram equalization
% I2 = imadjust(cropped_region,[.2 .3 0; .6 .7 1],[]);
I2(:,:,1) = histeq(cropped_region(:,:,1));
I2(:,:,2) = histeq(cropped_region(:,:,2));
I2(:,:,3) = histeq(cropped_region(:,:,3));
R=imhist(I2(:,:,1));
G=imhist(I2(:,:,2));
B=imhist(I2(:,:,3));

figure(14);
plot(R, 'r', 'LineWidth', 1.5);
hold on; 
plot(G, 'g', 'LineWidth', 1.5);
hold on;
plot(B, 'b', 'LineWidth', 1.5);
legend({'\textbf{Red channel}', ...
    '\textbf{Green channel}', ...
    '\textbf{Blue channel}'}, ...
    'Interpreter', 'latex', ...
    'Location', 'best');
title('\textbf{Equalized Histogram of the Cropped Region}', ...
    'Interpreter', ...
    'latex');
xlabel('\textbf{Intensity Value}', 'Interpreter', 'latex');
ylabel('\textbf{Count}', 'Interpreter', 'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
axis tight;
waitfor(gcf);

% 2.3 Display
figure(15);
subplot(1,2,1);
imshow(cropped_region);
title('\textbf{Cropped Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,2,2);
imshow(I2);
title('\textbf{Equalized Cropped Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.1 Filter 3x3
IG = rgb2gray(cropped_region);
figure(16);
imshow(IG);
title(['\textbf{Cropped Region $\mathbf{256\times256}$ ' ...
    'Converted to Black and White}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

f1=fspecial('average');
cf1= filter2(f1, IG);
figure(17);
subplot(1,2,1);
imshow(IG);
title('\textbf{Cropped Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,2,2);
imshow(cf1/255);
title('\textbf{Filtered Cropped Region 3x3}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.2 Filter 5x7
IG = rgb2gray(cropped_region);

f1=fspecial('average', [5, 7]);
cf1= filter2(f1, IG);
figure(18);
subplot(1,2,1);
imshow(IG);
title('\textbf{Cropped Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,2,2);
imshow(cf1/255);
title('\textbf{Filtered Cropped Region 5x7}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.3 Laplacian Filter
IG = rgb2gray(cropped_region);

f1=fspecial('laplacian');
cf2=filter2(f1, IG);

f1=fspecial('log');
cf3=filter2(f1, IG);

figure(19);
subplot(1,3,1);
imshow(IG);
title('\textbf{Cropped Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,3,2);
imshow(cf2/255);
title('\textbf{Filtered Cropped Region Laplacian}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,3,3);
imshow(cf3/255);
title('\textbf{Filtered Cropped Region Laplacian Gaussian}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.4 Salt and Piper
IG=rgb2gray(cropped_region);
c_sp=imnoise(IG,'salt & pepper');

figure(20);
subplot(1,2,1);
imshow(IG);
title('\textbf{Cropped Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,2,2);
imshow(c_sp);
title('\textbf{Cropped Region Salt and Piper}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.5 Filter Salt and Piper
a3=fspecial('average');
a4=fspecial('average',[5,7]);
c_sp_f3=filter2(a3,c_sp);
c_sp_f4=filter2(a4,c_sp);

figure(21);
subplot(1,3,1);
imshow(IG);
title('\textbf{Cropped Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,3,2);
imshow(c_sp_f3/255);
title('\textbf{Filtered Cropped Region Salt and Piper 3x3}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,3,3);
imshow(c_sp_f4/255);
title('\textbf{Filtered Cropped Region Salt and Piper 5x7}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 4.1 Generate image
a=zeros(256,256);
a(78:178,78:178)=1;
af=fftshift(fft2(a));

figure(22);
subplot(1,2,1);
imshow(a);
title('\textbf{Generated Image}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,2,2);
imshow(af);
title('\textbf{Fourier Specter of the Image}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 4.2 Salt and Piper Image
IG=rgb2gray(cropped_region);
c_sp=imnoise(IG,'salt & pepper');
cf=fftshift(fft2(c_sp));

figure(23);
subplot(1,2,1);
imshow(IG);
title('\textbf{Cropped Region Black and White}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,2,2);
imshow(cf);
title('\textbf{Fourier Spectre of the Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 4.3 Multiply
cf1=cf.*a;

figure(24);
subplot(1,3,1);
imshow(a);
title('\textbf{Generated Image}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,3,2);
imshow(cf);
title('\textbf{Fourier Spectre of the Region}', ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
subplot(1,3,3);
imshow(cf1/255);
title(['\textbf{Fourier Spectre of the Region without ' ...
    'High Frequencies}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 4.4 Inverse Fourier Transform
cf2=ifft2(cf1);

figure(25);
imshow(cf2/255);
title(['\textbf{Inverse Fourier Transform - Cropped Region ' ...
    'without High Frequencies}'], ...
    'Interpreter', ...
    'latex');
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);