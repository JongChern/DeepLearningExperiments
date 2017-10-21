Fs = 128;                   % samples per second
dt = 1/Fs;                   % seconds per sample
t = (0:dt:dt*32)';     % seconds
%% Sine wave:
Fc = 15;                     % hertz
trianglenoise=[];
for i=1:length(hrtimestamps)
    a = min(seperatedqrs(i,:));
    b = max(seperatedqrs(i,:));
    trianglenoise(i,:) = (((b-a).*triangle(2*pi*Fc*t))+a)';
end

labeledtrianglenoise = [trianglenoise zeros(length(hrtimestamps),1)];

dataset=[labeledqrs;labelednoise;labeledsinenoise;labeledtrianglenoise];

for i=1:length(hrtimestamps)
    a = min(seperatedqrs(i,:));
    b = max(seperatedqrs(i,:));
    newn1(i,:) = new(5,:);
end

for i=1:length(hrtimestamps)
    a = min(seperatedqrs(i,:));
    b = max(seperatedqrs(i,:));
    newn2(i,:) = new(4,:);
end

dataset=[labeledqrs;labelednoise;labeledsinenoise;labeledtrianglenoise;newn2;newn1];
