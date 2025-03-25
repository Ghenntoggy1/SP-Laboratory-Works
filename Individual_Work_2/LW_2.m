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

m = length(a) + length(b) - 1;
k = 1:1:m;

figure(2);
stem(k, c, 'r', 'filled', 'LineWidth', 1.5);
xlabel('\textbf{Time index (n)}', 'Interpreter', 'latex'); 
ylabel('\textbf{Amplitude}', 'Interpreter', 'latex');
title('\textbf{Convolution $\mathbf{c(n)=a(n)*b(n)}$}', 'Interpreter', 'latex');
grid on;
set(gca,'FontName', 'Arial Cyr', 'FontSize', 16);
waitfor(gcf);