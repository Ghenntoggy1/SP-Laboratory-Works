% Prerequisites
random_seed_1 = 1;
rng(random_seed_1);

% Step 1 - Generate 2 finite sequences a(n) and b(n)
a = [-2  0  1  -1  3];
b = [1 2 0 -1];

n = 1:1:length(a);
l = 1:1:length(b);

figure(1);
subplot(2,1,1);
stem(n, a, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title('\textbf{Sequence a(n)}', 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(2,1,2);
stem(l, b, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title('\textbf{Sequence b(n)}', 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 2 - Perform Convolution Sum of these signals
c = conv(a, b);

n = length(a) + length(b) - 1;
k = 1:1:n;

figure(2);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title('\textbf{Convolution $\mathbf{c(n)=a(n)*b(n)}$}', 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 3 - Find Fourier Transformation for a(n) and b(n).
AE=fft(a, n);
BE=fft(b, n);
p = AE.*BE;

figure(3);
stem(k, real(p), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(['\textbf{Fourier Transformation $\mathbf{c_{FFT}(n)=a_{FFT}(n) ' ...
'\cdot b_{FFT}(n)}$}'], 'Interpreter', 'latex');
grid on; 
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 4 - Find Inverse Fourier Transformation of c_FFT(n) in order
%          to obtain the convolution sum
y_1 = ifft(p);

figure(4);
stem(k, real(y_1), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(['\textbf{Convolution Sum using FFT $\mathbf{c(n)=' ...
'a(n) * b(n)}$}'], 'Interpreter', 'latex');
grid on; 
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 5 - Find the error between F.T. Convolution and Direct one
error = c - real(y_1);

figure(5);
subplot(3,1,1);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title('\textbf{Convolution $\mathbf{c(n)=a(n)*b(n)}$}', 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(3,1,2);
stem(k, real(y_1), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(['\textbf{Convolution Sum using FFT $\mathbf{c(n)=' ...
'a(n) * b(n)}$}'], 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(3,1,3);
stem(k, error, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(['\textbf{Error of F.T. Convolution $\mathbf{err = ' ...
'c(n) - c_{FFT}(n)}$}'], 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 6 - Repeat 1 - 4 for 2 more signals on bigger lengths

% Step 6.1 - Generate another 2 finite sequences a(n) and b(n)
len = 65536;
n = 1:len-1;
l = 0:len;

a = 2 * square(20*pi*n/len+1);
b = 3 * sawtooth(20*pi*l/len+1);

figure(6);
subplot(2,1,1);
stem(n, a, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Sequence a(n), len(n) = %d}', ...
len), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(2,1,2);
stem(l, b, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Sequence b(n), len(n) ' ...
'= %d}'], len), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 6.2 - Perform Convolution Sum of these signals. Time it.
tic();
c = conv(a, b);
elapsed_time_direct = toc();

n = len + len - 1;
k = 1:n;

figure(7);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c(n)=a(n)*b(n)}$, ' ...
'len(n) = %d}'], len), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 6.3 - Find Fourier Transformation for a(n) and b(n). Time it.
tic();
AE=fft(a, n);
BE=fft(b, n);
p = AE.*BE;
y_1 = ifft(p);
elapsed_time_FFT = toc();

figure(8);
stem(k, real(p), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Fourier Transformation $\\mathbf{c_{FFT}(n)=' ...
'a_{FFT}(n) \\cdot b_{FFT}(n)}$, len(n) = %d}'], len), ...
'Interpreter', 'latex');
grid on; 
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 6.4 - Find Inverse Fourier Transformation of c_FFT(n) in order
%          to obtain the convolution sum
figure(9);
stem(k, real(y_1), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution Sum using FFT ' ...
'$\\mathbf{c(n)=a(n) * b(n)}$, len(n) = %d}'], len), ...
'Interpreter', 'latex');
grid on; 
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 6.5 - Find the error between F.T. Convolution and Direct one
error = c - real(y_1);

figure(10);
subplot(3,1,1);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c(n)=a(n)*b(n)}$, ' ...
'len(n) = %d}'], len), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(3,1,2);
stem(k, real(y_1), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution Sum using FFT ' ...
'$\\mathbf{c(n)=a(n) * b(n)}$, len(n) = %d}'], len), ...
'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(3,1,3);
stem(k, error, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Error of F.T. Convolution ' ...
'$\\mathbf{err = c(n) - c_{FFT}(n)}, len(n) = %d$}'], ...
len), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

disp(['For len(n) = ', num2str(len)]);
disp(['Direct Convolution Time Elapsed: ', num2str(elapsed_time_direct), ' seconds']);
disp(['Fourier Transform Convolution Time Elapsed: ', ...
    num2str(elapsed_time_FFT), ' seconds']);

% Step 7 - Repeat 6 for 2 more signals on bigger lengths

% Step 7.1 - Generate another 2 finite sequences a(n) and b(n)
len = 2^21;

n = 1:len-1;
l = 0:len;

a = 2 * cos(2*pi*n/len+1);
b = 3 * sin(11*pi*l/len+1);

figure(11);
subplot(2,1,1);
stem(n, a, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Sequence a(n), len(n) = %d}', ...
len), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(2,1,2);
stem(l, b, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Sequence b(n), len(n) ' ...
'= %d}'], len), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 7.2 - Perform Convolution Sum of these signals. Time it.
tic();
c = conv(a, b);
elapsed_time_direct = toc();

n = len + len - 1;
k = 1:n;

figure(12);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c(n)=a(n)*b(n)}$, ' ...
'len(n) = %d}'], len), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 7.3 - Find Fourier Transformation for a(n) and b(n). Time it.
tic();
AE=fft(a, n);
BE=fft(b, n);
p = AE.*BE;
y_1 = ifft(p);
elapsed_time_FFT = toc();

figure(13);
stem(k, real(p), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Fourier Transformation $\\mathbf{c_{FFT}(n)=' ...
'a_{FFT}(n) \\cdot b_{FFT}(n)}$, len(n) = %d}'], len), ...
'Interpreter', 'latex');
grid on; 
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 7.4 - Find Inverse Fourier Transformation of c_FFT(n) in order
%          to obtain the convolution sum
figure(14);
stem(k, real(y_1), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution Sum using FFT ' ...
'$\\mathbf{c(n)=a(n) * b(n)}$, len(n) = %d}'], len), ...
'Interpreter', 'latex');
grid on; 
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 7.5 - Find the error between F.T. Convolution and Direct one
error = c - real(y_1);

figure(15);
subplot(3,1,1);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c(n)=a(n)*b(n)}$, ' ...
'len(n) = %d}'], len), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(3,1,2);
stem(k, real(y_1), 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution Sum using FFT ' ...
'$\\mathbf{c(n)=a(n) * b(n)}$, len(n) = %d}'], len), ...
'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(3,1,3);
stem(k, error, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Error of F.T. Convolution ' ...
'$\\mathbf{err = c(n) - c_{FFT}(n)}, len(n) = %d$}'], ...
len), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

disp(['For len(n) = ', num2str(len)]);
disp(['Direct Convolution Time Elapsed: ' ...
    , num2str(elapsed_time_direct), ' seconds']);
disp(['Fourier Transform Convolution Time Elapsed: ', ...
    num2str(elapsed_time_FFT), ' seconds']);

% Step 8 - Generate 2 signals and find their convolution
a = [1 2 3 4 5 4 3 3 2 2 1 1];
b = [1 4 2];

n = 1:1:length(a);
l = 1:1:length(b);

figure(16);
subplot(2,1,1);
stem(n, a, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Sequence a(n), len(n) = %d}', ...
length(a)), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(2,1,2);
stem(l, b, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Sequence b(n), len(n) ' ...
'= %d}'], length(b)), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

c = conv(a, b);

n = length(a) + length(b) - 1;
k = 1:1:n;

figure(17);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c(n)=a(n)*b(n)}$, ' ...
'len(n) = %d}'], n), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 9 - Separate Input Signal in 2 blocks
a1 = a(1:6);
d1 = length(a1);
n1 = 1:d1;
a2 = a(7:end);
d2 = length(a2);
n2 = 1:d2;

figure(18);
subplot(2,1,1);
stem(n1, a1, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Sequence $a_1(n)$, len(n) = %d}', ...
length(a1)), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(2,1,2);
stem(n2, a2, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Sequence $a_2(n)$, len(n) ' ...
'= %d}'], length(a2)), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

c1 = conv(a1, b);
c2 = conv(a2, b);

n1 = length(a1) + length(b) - 1;
n2 = length(a2) + length(b) - 1;
k1 = 1:1:n1;
k2 = 1:1:n2;

figure(19);
subplot(2,1,1);
stem(k1, c1, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c_1(n)=a_1(n)' ...
    '*b(n)}$, ' ...
'len(n) = %d}'], length(a1)), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);

subplot(2,1,2);
stem(k2, c2, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c_2(n)=a_2(n)' ...
    '*b(n)}$, ' ...
'len(n) = %d}'], length(a2)), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% Step 10 - Find the final Convolution
c_add=[c1(1:6) c1(7:8)+c2(1:2) c2(3:end)];

n = length(a) + length(b) - 1;
k = 1:1:n;

figure(20);
stem(k, c_add, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Convolution $\\mathbf{c_{add}' ...
    '(n)=c_1(n)+c_2(n)}$, ' ...
'len(n) = %d}'], n), 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);