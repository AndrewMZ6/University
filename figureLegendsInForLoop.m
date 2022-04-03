clc; clearvars; close all;

% create frequency range
freqArray = 1:5;

% create container for legend names
legendContainer = cell(1, length(freqArray));

% create timeline for building sinusoids
timeline = linspace(0, 2, 1000);

% counter for indexing legendContainer
k = 0;

figure;
for freq = freqArray
    k = k + 1;
    legendContainer{k} = ['freq = ', num2str(freq)];
    signal = sin(2*pi*freq*timeline);
    plot(timeline, signal); hold on;
end
title('my title'); xlabel('xlabel'); ylabel('ylabel');
legend(legendContainer);grid on;