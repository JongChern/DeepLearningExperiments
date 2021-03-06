# An Example/Experiment Using Neural Networks to Recognize an ECG signal

Note that the structure of the neural networks used is based on a picture recognition example provided by DL4J. Rather than a single row vector of data values representing the RGB pixel values a single row ECG signal is used. Note that for time series data, LSTM might be a better choice.

# Idea
The goal is to train a neural network to recognize a QRS signal.

# Data Collection and Data Processing
Labelled ECG data was collected at 128 Hz using [Consensys](http://shimmersensing.com/products/consensys). See [Labelled_ECG_Data_128Hz.mat](https://github.com/JongChern/DeepLearningExperiments/blob/master/DeepLearningExperiments/Matlab). Using the Heart Rate Peak Time Stamps, which indicates the approximate location of R(ecg), the QRS segments from the ECG signale is isolated. The QRS segment is assumedto be 125ms before and after R. Matlab script to isolate QRS can be found [here](https://github.com/JongChern/DeepLearningExperiments/blob/master/DeepLearningExperiments/Matlab/processLabelledECGtoSegmentsOfQRSSegments.m). Note that the QRS segments are stored in rows, with the last column of each row being used as the label. In this case '1' is used as the label.

![Isolated QRS](https://github.com/JongChern/DeepLearningExperiments/blob/master/DeepLearningExperiments/src/main/resources/isolated_QRS_signals.PNG)

In addition to obtaining QRS segments, the neural network needs to be trained to recognize non QRS segments. In order to do this various 'noise' is generated.

 

