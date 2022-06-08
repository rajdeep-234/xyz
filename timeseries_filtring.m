%create signal
s_rate=1000;%Hz
time=0:1/s_rate:3;
n=length(time);
p=15;%poles for random interpolation

%noiselevel,measured in standard deviation
noise_amp=6;

%amplitude modulator and noise level
amp=interp1(rand(p,1)*30,linspace(1,p,n))
noise=noise_amp*randn(size(time));
signal=amp+noise;
%initialize filtered signal vector
filtsig=ones(size(signal));
%implement running-mean time series filter
k=20;%filter window is actually 2*k+1
for i=k+1:n-k-1
    filtsig(i)=mean(signal(i-k:i+k))
end

%compute window size in ms
windowsize=1000*(k*2+1)/s_rate;

%plot the noisy and filtered signals
figure(1),clf,hold on
plot(time,signal,time,filtsig,'linew',3)

%draw a patch to indicate the window size
tidx=dsearchn(time',1);
ylim=get(gca,'ylim');
patch(time([tidx-k tidx-k tidx+k tidx+k]),ylim([1 2 2 1]),'k','facealpha',0.3);
plot(time([tidx tidx]),ylim,'k--')