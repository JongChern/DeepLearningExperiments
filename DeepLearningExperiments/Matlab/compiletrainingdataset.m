subplot(3,1,1);
generatenoise;
plot(randomnoise(1,:));
dataset=[labeledqrs;labelednoise];

subplot(3,1,2);
generatesine;
plot(sinenoise(1,:));
dataset=[dataset;labeledsinenoise];

subplot(3,1,3);