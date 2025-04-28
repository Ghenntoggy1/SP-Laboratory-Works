% Prerequisites
random_seed_1 = 1;
rng(random_seed_1);

% 1.1.1 Generate a discrete signal.
N = 64;
freq = 20;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

figure(1);
plot(k,f);
xlabel('\textbf{Index (k)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Y(t)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Original Discrete Signal, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 2.1.1 Apply FFT
F = fft(f);
k_freq = 0:N-1;

figure(2);
stem(k_freq, abs(F), "filled");
xlabel('\textbf{$F_k$ (Index in Frequency Domain)}' ...
    , 'Interpreter', 'latex');
ylabel('\textbf{F(k)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Absolute Value ' ...
    'of Fourier Transform, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 1.1.2 Repeat 1.1.
N = 64;
freq = 108;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

figure(3);
plot(k,f);
xlabel('\textbf{Index (k)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Y(t)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Original Discrete Signal, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 1.2.2 Apply FFT
F = fft(f);
k_freq = 0:N-1;

figure(4);
stem(k_freq, abs(F), "filled");
xlabel('\textbf{$F_k$ (Index in Frequency Domain)}' ...
    , 'Interpreter', 'latex');
ylabel('\textbf{F(k)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Absolute Value ' ...
    'of Fourier Transform, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 1.1.3 Generate a discrete signal.
N = 64;
freq = 10;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

figure(5);
plot(k,f);
xlabel('\textbf{Index (k)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Y(t)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Original Discrete Signal, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 2.1.3 Apply FFT
F = fft(f);
k_freq = 0:N-1;

figure(6);
stem(k_freq, abs(F), "filled");
xlabel('\textbf{$F_k$ (Index in Frequency Domain)}' ...
    , 'Interpreter', 'latex');
ylabel('\textbf{F(k)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Absolute Value ' ...
    'of Fourier Transform, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 1.1.4 Generate a discrete signal.
N = 64;
freq = 40;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

figure(7);
plot(k,f);
xlabel('\textbf{Index (k)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Y(t)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Original Discrete Signal, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 2.1.4 Apply FFT
F = fft(f);
k_freq = 0:N-1;

figure(8);
stem(k_freq, abs(F), "filled");
xlabel('\textbf{$F_k$ (Index in Frequency Domain)}' ...
    , 'Interpreter', 'latex');
ylabel('\textbf{F(k)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Absolute Value ' ...
    'of Fourier Transform, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 1.1.5 Generate a discrete signal.
N = 64;
freq = 72;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

figure(9);
plot(k,f);
xlabel('\textbf{Index (k)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Y(t)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Original Discrete Signal, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 2.1.5 Apply FFT
F = fft(f);
k_freq = 0:N-1;

figure(10);
stem(k_freq, abs(F), "filled", 'LineWidth', 1.5);
xlabel('\textbf{$F_k$ (Index in Frequency Domain)}' ...
    , 'Interpreter', 'latex');
ylabel('\textbf{F(k)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Absolute Value ' ...
    'of Fourier Transform, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 1.1.6 Generate a discrete signal.
N = 64;
freq = 118;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

figure(11);
plot(k,f);
xlabel('\textbf{Index (k)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Y(t)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Original Discrete Signal, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 2.1.6 Apply FFT
F = fft(f);
k_freq = 0:N-1;

figure(12);
stem(k_freq, abs(F), "filled", 'LineWidth', 1.5);
xlabel('\textbf{$F_k$ (Index in Frequency Domain)}' ...
    , 'Interpreter', 'latex');
ylabel('\textbf{F(k)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Absolute Value ' ...
    'of Fourier Transform, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);

waitfor(gcf);

% 1.3.1 Generate a discrete signal.
N = 64;
freq = 20;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

% 1.3.2 Apply FFT
F = fft(f);
k_freq = 0:N-1;

% 1.3.3 Represent half of absolute value
magF = abs(F);
hertz = k_freq * (1/(N*period));

figure(13);
stem(hertz(1:N/2), magF(1:N/2), 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
ylabel('\textbf{F(f)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Spectral Analysis ' ...
    'of the Signal in Frequency Domain, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 1.4.1 Generate a discrete signal.
N = 64;
freq = 19;
disc_freq = 128;
period = 1/disc_freq;
k=0: N-1;
f=sin(2*pi*freq*k*period);

% 1.4.2 Apply FFT
F = fft(f);
k_freq = 0:N-1;

% 1.4.3 Represent half of absolute value
magF = abs(F);
hertz = k_freq * (1/(N*period));

figure(14);
stem(hertz(1:N/2), magF(1:N/2), 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
ylabel('\textbf{F(f)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Spectral Analysis ' ...
    'of the Signal in Frequency Domain, ' ...
    '$\\mathbf{N = %d}$}, $\\mathbf{f = %d Hz}$, ' ...
    '$\\mathbf{f_{disc} = %d Hz}$, $\\mathbf{Y(t) = ' ...
    '\\sin \\left( 2\\pi fkT \\right)}$' ...
    ''], N, freq, disc_freq), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 2.1 Generate a signal composed of 2 sinusoids
t = (0:1/99:1);
freq_1 = 15;
freq_2 = 40;
x = sin(2*pi*freq_1*t) + sin(2*pi*freq_2*t);
y = fft(x);
m = abs(y);
p = unwrap(angle(y));
f = (0:length(y)-1)*99/length(y);

figure(15);
plot(f, m, 'LineWidth', 1.5);
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{Magnitude}', 'Interpreter', 'latex');
title('\textbf{Magnitude Plot}', 'Interpreter', 'latex');
set(gca, 'XTick', [15 40 60 85], 'FontName', ...
    'Arial Cyr', 'FontSize', 16);
grid on;
waitfor(gcf);

figure(16);
plot(f, p*180/pi, 'LineWidth', 1.5);
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{Phase}', 'Interpreter', 'latex');
title('\textbf{Phase Plot}', 'Interpreter', 'latex');
set(gca, 'XTick', [15 40 60 85], 'FontName', ...
    'Arial Cyr', 'FontSize', 16);
grid on;
waitfor(gcf);

% 2.1 Generate a signal composed of 2 sinusoids
t = (0:1/99:1);
freq_1 = 30;
freq_2 = 30;
x = sin(2*pi*freq_1*t) + sin(2*pi*freq_2*t);
y = fft(x);
m = abs(y);
p = unwrap(angle(y));
f = (0:length(y)-1)*99/length(y);

figure(17);
plot(f, m, 'LineWidth', 1.5);
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{Magnitude}', 'Interpreter', 'latex');
title('\textbf{Magnitude Plot}', 'Interpreter', 'latex');
set(gca, 'XTick', [15 40 60 85], 'FontName', ...
    'Arial Cyr', 'FontSize', 16);
grid on;
waitfor(gcf);

figure(18);
plot(f, p*180/pi, 'LineWidth', 1.5);
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{Phase}', 'Interpreter', 'latex');
title('\textbf{Phase Plot}', 'Interpreter', 'latex');
set(gca, 'XTick', [15 40 60 85], 'FontName', ...
    'Arial Cyr', 'FontSize', 16);
grid on;
waitfor(gcf);

% 2.1 Generate a signal composed of 2 sinusoids
t = (0:1/99:1);
freq_1 = 78;
freq_2 = 12;
x = sin(2*pi*freq_1*t) + sin(2*pi*freq_2*t);
y = fft(x);
m = abs(y);
p = unwrap(angle(y));
f = (0:length(y)-1)*99/length(y);

figure(19);
plot(f, m, 'LineWidth', 1.5);
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{Magnitude}', 'Interpreter', 'latex');
title('\textbf{Magnitude Plot}', 'Interpreter', 'latex');
set(gca, 'XTick', [15 40 60 85], 'FontName', ...
    'Arial Cyr', 'FontSize', 16);
grid on;
waitfor(gcf);

figure(20);
plot(f, p*180/pi, 'LineWidth', 1.5);
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{Phase}', 'Interpreter', 'latex');
title('\textbf{Phase Plot}', 'Interpreter', 'latex');
set(gca, 'XTick', [15 40 60 85], 'FontName', ...
    'Arial Cyr', 'FontSize', 16);
grid on;
waitfor(gcf);

% 3.1 - Generate Rectangular Signal
A = 0.75;
w = 50;
Ts = 0.01;
T = 100;
t = 0:Ts:T;
x = A*rectpuls(t,w);

figure(21);
stem(t, x, 'LineWidth', 1.5);
xlabel('\textbf{Time Index, t}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Rectangular Signal}, ' ...
    '$\\mathbf{A = %.2f}$, ' ...
    '$\\mathbf{w = %d}$'], ...
    A, w), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.2 Plot the dependency between Absolute Value
% and Frequency
df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
y = fft(x);

figure(22);
stem(f, abs(y), 'LineWidth', 1.5);
xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
ylabel('\textbf{Y(f)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Spectral Analysis of ' ...
    'Rectangular Signal}, ' ...
    '$\\mathbf{A = %.2f}$, ' ...
    '$\\mathbf{w = %d}$'], ...
    A, w), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.2.1 - Repeat
A = 0.75;
w = 5;
Ts = 0.01;
T = 100;
t = 0:Ts:T;
x = A*rectpuls(t,w);

% 3.2 Plot the dependency between Absolute Value
% and Frequency
df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
y = fft(x);

figure(23);
stem(f, abs(y), 'LineWidth', 1.5);
xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
ylabel('\textbf{Y(f)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Spectral Analysis of ' ...
    'Rectangular Signal}, ' ...
    '$\\mathbf{A = %.2f}$, ' ...
    '$\\mathbf{w = %d}$'], ...
    A, w), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.2.2 - Repeat
A = 0.75;
w = 0.5;
Ts = 0.01;
T = 100;
t = 0:Ts:T;
x = A*rectpuls(t,w);

% 3.2 Plot the dependency between Absolute Value
% and Frequency
df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
y = fft(x);

figure(24);
stem(f, abs(y), 'LineWidth', 1.5);
xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
ylabel('\textbf{Y(f)}', 'Interpreter', 'latex');
title(sprintf(['\\textbf{Spectral Analysis of ' ...
    'Rectangular Signal}, ' ...
    '$\\mathbf{A = %.2f}$, ' ...
    '$\\mathbf{w = %d}$'], ...
    A, w), 'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.3 - Shift
A = 0.75;
w = 50;
Ts = 0.01;
T = 100;
t = 0:Ts:T;
x = A*rectpuls(t,w);

df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
y = fft(x);

yp = fftshift(y);
f1 = -Fmax/2 : df : Fmax/2;

figure(25);
plot(f1, abs(yp), 'LineWidth', 1.5);
xlabel('\boldmath{$\omega$}', 'Interpreter', 'latex');
ylabel('\textbf{Y($\omega$)}', 'Interpreter', 'latex');
xlim([-pi pi]);
title(['\textbf{Spectral Analysis ' ...
    '$-\pi$ to $+\pi$}'], ...
    'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 3.4 - Plot both Real and Imaginary Parts
figure(26);
plot(f1, real(yp), 'b', 'LineWidth', 1.5);
hold on;

plot(f1, imag(yp), 'r--', 'LineWidth', 1.5);
hold off;

xlabel('\textbf{Frequency (Hz)}', ...
    'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(['\textbf{Real and ' ...
    'Imaginary Parts of F.T.}'], ...
    'Interpreter', 'latex');
legend({'\textbf{Re\{Y(f)\}}', ...
    '\textbf{Im\{Y(f)\}}'}, ...
    'Interpreter', 'latex', 'Location', 'best');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 4.1 - Generate Random Noise
Ts = 0.01; 
T = 50; 
t = 0:Ts:T; 
x1 = rand(1, length(t));

figure(27);
plot(t, x1, 'LineWidth', 1.5);
xlabel('\textbf{Time Index, t}', 'Interpreter', 'latex');
ylabel('\textbf{X($t$)}', 'Interpreter', 'latex');
title('\textbf{Random Noise}', ...
    'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 4.2 - Apply Filtering
a = 0; 
b = 0; 
om0 = 2*pi; 
dz = 0.05; 
A = 1; 
oms = om0*Ts;
a(1) = 1+2*dz*oms+oms^2;
a(2) = -2*(1+dz*oms);
a(3) = 1;
b(1) = A*2*dz*oms^2;
y1 = filter(b,a,x1);

figure(28);
plot(t, y1, 'LineWidth', 1.5);
xlabel('\textbf{Time Index, t}', 'Interpreter', 'latex');
ylabel('\textbf{Y($t$)}', 'Interpreter', 'latex');
title('\textbf{Filtered Random Noise}', ...
    'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

% 4.3 - Apply F.T. on before and after filter on Noise
df = 1/T; 
Fmax = 1/Ts; 
f = -Fmax/2:df:Fmax/2;
Fu1 = fft(x1); 
Fu2 = fft(y1);
Fu1p = fftshift(Fu1); 
Fu2p = fftshift(Fu2);
m1 = abs(Fu1p); 
m2 = abs(Fu2p);

figure(29);
stem(f, m1, 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{$\mathbf{f_{noFilter}(f)}$}', 'Interpreter', 'latex');
title('\textbf{F.T. on Unfiltered Random Noise}', ...
    'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);

figure(30); 
stem(f, m2, 'filled', 'LineWidth', 1.5); 
xlabel('\textbf{Frequency, Hz}', 'Interpreter', 'latex');
ylabel('\textbf{$\mathbf{f_{filter}(f)}$}', 'Interpreter', 'latex');
title('\textbf{F.T. on Filtered Random Noise}', ...
    'Interpreter', 'latex');
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);