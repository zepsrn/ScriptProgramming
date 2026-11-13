% Mandatory Task 1a
x1 = 0:0.5:2*pi;
f1 = sin(x1) + cos(x1).^2;

figure;
plot(x1, f1, 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y');
xlabel('x');
ylabel('f(x) = sin(x) + cos^2(x)');
title('f(x) = sin(x) + cos^2(x)');
grid on;
axis([min(x1) max(x1) min(f1) max(f1)]);
legend('sin(x) + cos^2(x)');

% Mandatory Task 1b
f2 = x1.^exp(1);
f3 = x1.^(2*exp(1));
f4 = x1.^(3*exp(1));

figure;
plot(x1, f2);
hold on;
plot(x1, f3);
plot(x1, f4);
hold off;
xlabel('x');
ylabel('f(x)');
title('f(x) = x^e, x^{2e}, x^{3e}');
legend('x^e', 'x^{2e}', 'x^{3e}', 'Location', 'best');
grid on;
axis([0 1 0 1]);

% Mandatory Task 2a
x2 = -2*pi:0.1:2*pi;
y2 = x2.^3 + sin(x2);

figure;
quiver(x2, zeros(size(x2)), zeros(size(x2)), y2);
xlabel('x');
ylabel('y(x) = x^3 + sin(x)');
title('y(x) = x^3 + sin(x) as vectors');
grid on;

% Mandatory Task 2b
figure;
bar(x2, y2);
xlabel('x');
ylabel('y(x) = x^3 + sin(x)');
title('y(x) = x^3 + sin(x) as bars');
grid on;

% Complementary Task - signal setup (from LW2, variant 5)
A = 6; f = 2; sigma = 1.5; U1 = 4; U2 = 2;
t = 0:0.005:2;
s = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
signal = s + n;
filtered = signal;
filtered(abs(filtered) < U2) = 0;
selected = signal(signal > U1);
t_selected = t(signal > U1);
[maxVal, maxIdx] = max(filtered);
[minVal, minIdx] = min(filtered);

yMinAll = min(signal) - 1;
yMaxAll = max(signal) + 1;

% Complementary Task a
figure;
subplot(1,2,1);
plot(t, signal, '-', 'LineWidth', 2);
hold on;
plot(t, filtered, ':', 'LineWidth', 2);
plot([t(1) t(end)], [U1 U1]);
plot([t(1) t(end)], [U2 U2], '--', 'Color', [0.5 0 0.5]);
hold off;
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Original and Filtered Signal');
legend('Original signal', 'Filtered signal', 'U1', 'U2', 'Location', 'northeast');
grid on;
axis([t(1) t(end) yMinAll yMaxAll]);

% Complementary Task b
subplot(1,2,2);
stem(t_selected, selected);
hold on;
plot(t(maxIdx), maxVal, 'go', 'MarkerSize', 9);
plot(t(minIdx), minVal, 'x', 'Color', 'k');
hold off;
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Signal Samples Exceeding U1');
legend('Selected samples', 'Max value', 'Min value', 'Location', 'northeast');
grid on;
axis([t(1) t(end) yMinAll yMaxAll]);