# An Example/Experiment Using Neural Networks to Recognize an ECG signal

Note that the structure of the neural networks used is based on a picture recognition example provided by DL4J. Rather than a single row vector of data values representing the RGB pixel values a single row ECG signal is used. Note that for time series data, LSTM might be a better choice.

# Idea
The goal is to train a neural network to recognize a QRS signal.

# Data Collectiona and Processing
Labelled ECG data was collected at 128 Hz using [Consensys](http://shimmersensing.com/products/consensys). See [Labelled_ECG_Data_128Hz.mat](https://github.com/JongChern/DeepLearningExperiments/tree/master/DeepLearningExperiments/src/main/resources). Using the Heart Rate Peak Time Stamps, which indicate where the location of R(ecg) is this is used to take a QRS snap shot, it is assumed this is 125ms before and after R. Matlab script to isolate QRS can be found [here](https://github.com/JongChern/DeepLearningExperiments/blob/master/DeepLearningExperiments/Matlab/processLabelledECGtoSegmentsOfQRSSegments.m).

![Isolated QRS](https://github.com/JongChern/DeepLearningExperiments/blob/master/DeepLearningExperiments/src/main/resources/isolated_QRS_signals.PNG)


