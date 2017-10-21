%% Time specifications:
Fs = 128;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:dt*32)';     % seconds
%% Sine wave:
Fc = 5;                     % hertz
sinenoise=[];
for i=1:length(hrtimestamps)
    
    a = min(seperatedqrs(i,:));
    b = max(seperatedqrs(i,:));
    sinenoise(i,:) = ((b-a).*(cos(2*pi*Fc*t)+1)+a)';
    
end

labeledsinenoise = [sinenoise zeros(length(hrtimestamps),1)];

