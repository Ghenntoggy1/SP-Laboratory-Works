% Prerequisites
random_seed_1 = 1;
random_seed_2 = 2;

% Step 1 - Generate Random White Noise
rng(random_seed_1);

Ts = 0.01;
t = 0:Ts:5;
x1 = rand(1, length(t));

figure(1);
plot(t, x1);
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
title(sprintf('\\textbf{Generated Random White Noise using rand() - Seed %d, Step %.2f s}', random_seed_1, Ts), 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{Function y(t)}', 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.2 - Plot Histogram for this noise - x1
t_short = 0:Ts:1;

figure(2);
histogram(x1, t_short);
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
title(sprintf('\\textbf{Histogram of Generated Random White Noise - Seed %d, Step %.2f s}', random_seed_1, Ts), 'Interpreter', 'latex');
xlabel('\textbf{Time, (s)}', 'Interpreter', 'latex');
ylabel('\textbf{Frequency}', 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.3 - Generate Another White Noise
rng(random_seed_2);
Ts = 0.001;
t = 0:Ts:5;
x2 = rand(1, length(t));

figure(3);
plot(t, x2);
grid on;
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
title(sprintf('\\textbf{Generated Random White Noise using rand() - Seed %d, Step %.3f s}', random_seed_2, Ts), 'Interpreter', 'latex');
xlabel('\textbf{X Values}', 'Interpreter', 'latex');
ylabel('\textbf{Function y(t)}', 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.4 - Histogram of 2nd White Noise
Ts = 0.001;
t = 0:Ts:1;
x2 = rand(1, length(t));

figure(4);
histogram(x2, t);
set(gca, 'FontName', 'Arial Cyr', 'FontSize', 16);
title(sprintf(['\\textbf{Histogram of Generated Random ' ...
    'White Noise - Seed %d, Step %.3f s}'], random_seed_2, Ts), ...
    'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{Frequency}', 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.5 - Digital Filter of 2nd order
rng(random_seed_1);
Ts = 0.01;
om0 = 2*pi;
dz = 0.005;
A = 1;
oms = om0*Ts;
a(1) = 1 + 2 * dz * oms + oms^2;
a(2) = -2 * (1 + dz * oms);
a(3) = 1;
b(1) = A*2*oms^2;
t = 0:Ts:50;
x1 = rand(1,length(t));
y1 = filter(b,a,x1);

figure(5);
plot(t, y1);
set (gca,'FontName', 'Arial Cyr','FontSize',16);
title(sprintf(['\\textbf{Filtering Generated Random White ' ...
    'Noise using Digital Filter of $2^{nd}$ Order - Seed ' ...
    '%d, Step %.2f s, $\\omega_0 = 2\\pi$}'], random_seed_1, ...
    Ts), 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel("\textbf{Function y'(t)}", 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.5.1 - decrease om0
rng(random_seed_1);
Ts = 0.01;
om0 = pi/2;
dz = 0.005;
A = 1;
oms = om0*Ts;
a(1) = 1 + 2 * dz * oms + oms^2;
a(2) = -2 * (1 + dz * oms);
a(3) = 1;
b(1) = A*2*oms^2;
t = 0:Ts:50;
x1 = rand(1,length(t));
y1 = filter(b,a,x1);

figure(6);
plot(t, y1);
set (gca,'FontName', 'Arial Cyr','FontSize',16);
title(sprintf('\\textbf{Filtering Generated Random White Noise using Digital Filter of $2^{nd}$ Order - Seed %d, Step %.2f s, $\\omega_0 = \\frac{\\pi}{2}$}', random_seed_1, Ts), 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel("\textbf{Function y'(t)}", 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.5.2 - increase om0
rng(random_seed_1);
Ts = 0.01;
om0 = 10*pi;
dz = 0.005;
A = 1;
oms = om0*Ts;
a(1) = 1 + 2 * dz * oms + oms^2;
a(2) = -2 * (1 + dz * oms);
a(3) = 1;
b(1) = A*2*oms^2;
t = 0:Ts:50;
x1 = rand(1,length(t));
y1 = filter(b,a,x1);

figure(7);
plot(t, y1);
set (gca,'FontName', 'Arial Cyr','FontSize',16);
title(sprintf('\\textbf{Filtering Generated Random White Noise using Digital Filter of $2^{nd}$ Order - Seed %d, Step %.2f s, $\\omega_0 = 10\\pi$}', random_seed_1, Ts), 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel("\textbf{Function y'(t)}", 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.6 - Repeat 1.5 with Ts = 0.001 and x2
rng(random_seed_2);
Ts = 0.001;
om0 = 2*pi;
dz = 0.005;
A = 1;
oms = om0*Ts;
a(1) = 1 + 2 * dz * oms + oms^2;
a(2) = -2 * (1 + dz * oms);
a(3) = 1;
b(1) = A*2*oms^2;
t = 0:Ts:50;
x2 = rand(1, length(t));
y2 = filter(b,a,x2);

figure(8);
plot(t, y2);
set (gca,'FontName', 'Arial Cyr','FontSize',16);
title(sprintf('\\textbf{Filtering Generated Random White Noise using Digital Filter of $2^{nd}$ Order - Seed %d, Step %.3f s, dz %.3f}', random_seed_2, Ts, dz), 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel("\textbf{Function y'(t)}", 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.6.1 - decrease dz
rng(random_seed_2);
Ts = 0.001;
om0 = 2*pi;
dz = 0.00001;
A = 1;
oms = om0*Ts;
a(1) = 1 + 2 * dz * oms + oms^2;
a(2) = -2 * (1 + dz * oms);
a(3) = 1;
b(1) = A*2*oms^2;
t = 0:Ts:50;
x2 = rand(1, length(t));
y2 = filter(b,a,x2);

figure(9);
plot(t, y2);
set (gca,'FontName', 'Arial Cyr','FontSize',16);
title(sprintf('\\textbf{Filtering Generated Random White Noise using Digital Filter of $2^{nd}$ Order - Seed %d, Step %.3f s, dz %.5f}', random_seed_2, Ts, dz), 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel("\textbf{Function y'(t)}", 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 1.6 - increase dz
rng(random_seed_2);
Ts = 0.001;
om0 = 2*pi;
dz = 1.5;
A = 1;
oms = om0*Ts;
a(1) = 1 + 2 * dz * oms + oms^2;
a(2) = -2 * (1 + dz * oms);
a(3) = 1;
b(1) = A*2*oms^2;
t = 0:Ts:50;
x2 = rand(1, length(t));
y2 = filter(b,a,x2);

figure(10);
plot(t, y2);
set (gca,'FontName', 'Arial Cyr','FontSize',16);
title(sprintf('\\textbf{Filtering Generated Random White Noise using Digital Filter of $2^{nd}$ Order - Seed %d, Step %.3f s, dz %.1f}', random_seed_2, Ts, dz), 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel("\textbf{Function y'(t)}", 'Interpreter', 'latex');
grid on;
waitfor(gcf);

% Step 2.1 - Generate a clean signal s(n)
rng(random_seed_1)
R = 50;
n = 0:1:R-1;
s = 2*n.*(0.9.^n);

figure(11);
stem(n, s);
grid on; 
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Original, Clean Signal - Seed=%d, $\\mathbf{s(n) = 2n\\cdot0.9^n}$}', random_seed_1), 'Interpreter', 'latex');
waitfor(gcf);

% Step 2.2 - Generate a Noise using rand() and plot it
d = rand(1, length(n)) - 0.5;

figure(12);
stem(n, d);
grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Generated Random Noise - Seed %d}', random_seed_1), 'Interpreter', 'latex');
waitfor(gcf);

% Step 2.3 - Plot both signals on the same plot
figure(13);
stem(n, d, 'b', 'DisplayName', 'Random Noise');
hold on;
stem(n, s, 'r', 'DisplayName', 'Clean Signal $s(n) = 2n\cdot0.9^n$');
hold off;
grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Generated Random Noise and Clean Signal - Seed=%d, $\\mathbf{s(n) = 2n\\cdot0.9^n}$}', random_seed_1), 'Interpreter', 'latex');
legend('Location', 'best', 'Interpreter', 'latex');
waitfor(gcf);

% Step 2.4 - Add Generated Noise to s(n)
noise_s = s + d;

figure(14);
stem(n, noise_s);
grid on; 
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Affected by Noise Signal - Seed=%d, $\\mathbf{noise_s(n) = (2n\\cdot0.9^n)+d}$}', random_seed_1), 'Interpreter', 'latex');
waitfor(gcf);

% Step 2.5 - Project a MAF Filter
M = 3;
b = ones(M, 1)/M;
y = filter(b, 1, noise_s);

figure(15);
plot(n, s, 'r', 'LineWidth', 1.5, 'DisplayName', 'Clean Signal $s(n) = 2n\cdot0.9^n$');
hold on;
plot(n, noise_s, 'b', 'LineWidth', 1.5, 'DisplayName', 'Noisy Signal $s(n)$');
hold on;
plot(n, y, 'g', 'DisplayName', 'Filtered Signal $s(n)$');

grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Clean, Noisy and Filtered Signal - Seed=%d, M=%d, $\\mathbf{s(n) = 2n\\cdot0.9^n}$}', random_seed_1, M), 'Interpreter', 'latex');
legend('Location', 'best', 'Interpreter', 'latex');
waitfor(gcf);

% Step 2.6 - Repeat step 2.5 with different M values
M = 5;
b = ones(M, 1)/M;
y = filter(b, 1, noise_s);

figure(16);
plot(n, s, 'r', 'LineWidth', 1.5, 'DisplayName', 'Clean Signal $s(n) = 2n\cdot0.9^n$');
hold on;
plot(n, noise_s, 'b', 'LineWidth', 1.5, 'DisplayName', 'Noisy Signal $s(n)$');
hold on;
plot(n, y, 'g', 'DisplayName', 'Filtered Signal $s(n)$');

grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Clean, Noisy and Filtered Signal - Seed=%d, M=%d, $\\mathbf{s(n) = 2n\\cdot0.9^n}$}', random_seed_1, M), 'Interpreter', 'latex');
legend('Location', 'best', 'Interpreter', 'latex');
waitfor(gcf);

M = 10;
b = ones(M, 1)/M;
y = filter(b, 1, noise_s);

figure(17);
plot(n, s, 'r', 'LineWidth', 1.5, 'DisplayName', 'Clean Signal $s(n) = 2n\cdot0.9^n$');
hold on;
plot(n, noise_s, 'b', 'LineWidth', 1.5, 'DisplayName', 'Noisy Signal $s(n)$');
hold on;
plot(n, y, 'g', 'DisplayName', 'Filtered Signal $s(n)$');

grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Clean, Noisy and Filtered Signal - Seed=%d, M=%d, $\\mathbf{s(n) = 2n\\cdot0.9^n}$}', random_seed_1, M), 'Interpreter', 'latex');
legend('Location', 'best', 'Interpreter', 'latex');
waitfor(gcf);

% Step 2.7 Perform Filtering on another signal and plot the results
R = 1;
n = 0:0.001:R;
M = 20;
s = 2*sawtooth(3*pi*n+pi/6);
d = rand(1, length(n)) - 0.5;
noise_s = s + d;
b = ones(M, 1)/M;
y = filter(b, 1, noise_s);

figure(18);
plot(n, noise_s, 'g', 'LineWidth', 1.5, 'DisplayName', 'Noisy Signal $s(n)$');
hold on;
plot(n, s, 'r', 'LineWidth', 1.5, 'DisplayName', 'Clean Signal $s(n) = 2 \cdot sawtooth \cdot (3 \pi n + \frac{\pi}{6})$');
hold on;
plot(n, y, 'b', 'LineWidth', 1.5, 'DisplayName', 'Filtered Signal $s(n)$');

grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Clean, Noisy and Filtered Signal - Seed=%d, M=%d, $\\mathbf{s(n)=2 \\cdot sawtooth \\cdot (3 \\pi n + \\frac{\\pi}{6})}$}', random_seed_1, M), 'Interpreter', 'latex');
legend('Location', 'best', 'Interpreter', 'latex');
waitfor(gcf);

% Step 2.8 Repeat Step 2.7 with different M values
R = 1;
n = 0:0.001:R;
M = 50;
s = 2*sawtooth(3*pi*n+pi/6);
d = rand(1, length(n)) - 0.5;
noise_s = s + d;
b = ones(M, 1)/M;
y = filter(b, 1, noise_s);

figure(19);
plot(n, noise_s, 'g', 'LineWidth', 1.5, 'DisplayName', 'Noisy Signal $s(n)$');
hold on;
plot(n, s, 'r', 'LineWidth', 1.5, 'DisplayName', 'Clean Signal $s(n) = 2 \cdot sawtooth \cdot (3 \pi n + \frac{\pi}{6})$');
hold on;
plot(n, y, 'b', 'LineWidth', 1.5, 'DisplayName', 'Filtered Signal $s(n)$');

grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Clean, Noisy and Filtered Signal - Seed=%d, M=%d, $\\mathbf{s(n)=2 \\cdot sawtooth \\cdot (3 \\pi n + \\frac{\\pi}{6})}$}', random_seed_1, M), 'Interpreter', 'latex');
legend('Location', 'best', 'Interpreter', 'latex');
waitfor(gcf);

M = 100;
b = ones(M, 1)/M;
y = filter(b, 1, noise_s);

figure(20);
plot(n, noise_s, 'g', 'LineWidth', 1.5, 'DisplayName', 'Noisy Signal $s(n)$');
hold on;
plot(n, s, 'r', 'LineWidth', 1.5, 'DisplayName', 'Clean Signal $s(n) = 2 \cdot sawtooth \cdot (3 \pi n + \frac{\pi}{6})$');
hold on;
plot(n, y, 'b', 'LineWidth', 1.5, 'DisplayName', 'Filtered Signal $s(n)$');

grid on;
set(gca,'FontName', 'Arial Cyr','FontSize',16);
xlabel('\textbf{Time Index (n)}', 'Interpreter', 'latex');
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title(sprintf('\\textbf{Clean, Noisy and Filtered Signal - Seed=%d, M=%d, $\\mathbf{s(n)=2 \\cdot sawtooth \\cdot (3 \\pi n + \\frac{\\pi}{6})}$}', random_seed_1, M), 'Interpreter', 'latex');
legend('Location', 'best', 'Interpreter', 'latex');
waitfor(gcf);