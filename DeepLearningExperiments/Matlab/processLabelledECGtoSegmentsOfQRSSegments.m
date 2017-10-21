hrtimestamps=Shimmer_DB79_HR_PEAK_TS_LA_RA_CAL(Shimmer_DB79_HR_PEAK_TS_LA_RA_CAL>0);
start=1;
seperatedqrs=[];
samplingrate=128;
samplingdurationinms=1/samplingrate*1000;
qrsduration=250;
samplestokeep=qrsduration/samplingdurationinms;
%samplestokeep=70;
for i=1:length(hrtimestamps)
    found =0;
    for j=start:length(Shimmer_DB79_ECG_LA_RA_24BIT_CAL)
        
        if (Shimmer_DB79_Timestamp_Shimmer_CAL(j)>(hrtimestamps(i)-(qrsduration/2)) && found==0)
            seperatedqrs(i,:)=normecg(j:j+samplestokeep);
            start=j+samplestokeep;
            found=1;
        end
    end
    
end

labeledqrs = [seperatedqrs ones(length(hrtimestamps),1)]; % label QRS data as 1

subplot(2,1,1); 
plot(Shimmer_DB79_ECG_LA_RA_24BIT_CAL(1:samplingrate*3)); %3 seconds of ecg data
subplot(2,1,2);
plot(seperatedqrs(1,:));