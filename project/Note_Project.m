clear;
clc;

[sound,Fs]=audioread("guitar_sound.mp3");

%%
sound = sound(:,1);

F_sound = fft(sound);

N = length(abs(F_sound));
%using the given interval in terms of N,the signal is sampled in this
%specified interval,this made the signal continuous time to discrete time.
%the same method implemented the other sub-intervals.
fgrid = Fs*linspace(-(N-1)/N,(N-1)/N, N);
%%

sound_1 = sound(41505:84139);

F_sound_1 = fft(sound_1);

N_1 = length(abs(F_sound_1));
fgrid_1 = Fs*linspace(-(N_1-1)/N_1,(N_1-1)/N_1, N_1);
%%
%Parseval's Method
%LHS stands for left hand side signal energy and RHS stands for right hand
%side energy.
%to store the data of equality 
LHS=sum(abs(sound_1.*sound_1));
disp('this is LHS value:');
disp(LHS);

RHS=sum(abs(F_sound_1.*F_sound_1))/N_1;
disp('this is RHS value:');
disp(RHS);

if RHS==LHS
    isEqual_1=1;
    disp('1_test_passed')
else
    disp('1_ERROR:A')
end
%%
sound_2 = sound(85278:134220);

F_sound_2 = fft(sound_2);

N_2 = length(abs(F_sound_2));
fgrid_2= Fs*linspace(-(N_2-1)/N_2,(N_2-1)/N_2, N_2);
 
%%
%Parseval's Method
%LHS stands for right hand side and RHS stands for left hand side
%to store the data of equality 

LHS_2=sum(abs(sound_2.*sound_2));
disp('this is LHS value:');
disp(LHS_2);

RHS_2=sum(abs(F_sound_2.*F_sound_2))/N_2;
disp('this is RHS value:');
disp(RHS_2);

if RHS_2==LHS_2
    isEqual_2=1;
     disp('2_test_passed')
else
    isEqual_2=0;
    disp('2_ERROR:A')
end
%%
sound_3 = sound(134225:182165);

F_sound_3 = fft(sound_3);

N_3 = length(abs(F_sound_3));
fgrid_3 = Fs*linspace(-(N_3-1)/N_3,(N_3-1)/N_3, N_3);
%%
%Parseval's Method
%LHS stands for right hand side and RHS stands for left hand side
%to store the data of equality 

LHS_3=sum(abs(sound_3.*sound_3));
disp('this is LHS value:');
disp(LHS_3);

RHS_3=sum(abs(F_sound_3.*F_sound_3))/N_3;
disp('this is RHS value:');
disp(RHS_3);

if RHS_3==LHS_3
    isEqual_3=1;
     disp('3_test_passed')
else
    isEqual_3=0;
    disp('3_ERROR:A')
end
%%
sound_4 = sound(182166:227726);

F_sound_4 = fft(sound_4);

N_4 = length(abs(F_sound_4));
fgrid_4 = Fs*linspace(-(N_4-1)/N_4,(N_4-1)/N_4, N_4);
%%
%Parseval's Method
%LHS stands for right hand side and RHS stands for left hand side
%to store the data of equality 

LHS_4=sum(abs(sound_4.*sound_4));
disp('this is LHS value:');
disp(LHS_4);

RHS_4=sum(abs(F_sound_4.*F_sound_4))/N_4;
disp('this is RHS value:');
disp(RHS_4);

if RHS_4==LHS_4
    isEqual_4=1;
     disp('4_test_passed')
else
    isEqual_4=0;
    disp('4_ERROR:A')
end
%%
sound_5 = sound(227726:275207);

F_sound_5 = fft(sound_5);

N_5 = length(abs(F_sound_5));
fgrid_5 = Fs*linspace(-(N_5-1)/N_5,(N_5-1)/N_5, N_5);
%%
%Parseval's Method
%LHS stands for right hand side and RHS stands for left hand side
%to store the data of equality 

LHS_5=sum(abs(sound_5.*sound_5));
disp('this is LHS value:');
disp(LHS_5);

RHS_5=sum(abs(F_sound_5.*F_sound_5))/N_5;
disp('this is RHS value:');
disp(RHS_5);

if RHS_5==LHS_5
    isEqual_5=1;
     disp('5_test_passed')
else
    isEqual_5=0;
    disp('5_ERROR:A')
end
%%
sound_6 = sound(275208:327223);

F_sound_6 = fft(sound_6);

N_6 = length(abs(F_sound_6));
fgrid_6 = Fs*linspace(-(N_6-1)/N_6,(N_6-1)/N_6, N_6);

%%
%Parseval's Method
%LHS stands for right hand side and RHS stands for left hand side
%to store the data of equality 

LHS_6=sum(abs(sound_6.*sound_6));
disp('this is LHS value:');
disp(LHS_6);

RHS_6=sum(abs(F_sound_6.*F_sound_6))/N_6;
disp('this is RHS value:');
disp(RHS_3);

if RHS_6==LHS_6
    isEqual_6=1;
     disp('6_test_passed')
else
    isEqual_6=0;
    disp('6_ERROR:A')
end
%%
figure,
subplot(211);plot(sound);title("All");
subplot(212);plot(fgrid,fftshift(abs(F_sound)));title("All Freq");
%%
figure,
subplot(211);plot(sound_1);title("One");
subplot(212);plot(fgrid_1,fftshift(abs(F_sound_1)));title("One Freq");
%%
figure,
subplot(211);plot(sound_2);title("Two");
subplot(212);plot(fgrid_2,fftshift(abs(F_sound_2)));title("Two Freq");
%%
figure,
subplot(211);plot(sound_3);title("Three");
subplot(212);plot(fgrid_3,fftshift(abs(F_sound_3)));title("Three Freq");
%%
figure,
subplot(211);plot(sound_4);title("Four");
subplot(212);plot(fgrid_4,fftshift(abs(F_sound_4)));title("Four Freq");
%%
figure,
subplot(211);plot(sound_5);title("Five");
subplot(212);plot(fgrid_5,fftshift(abs(F_sound_5)));title("Five Freq");
%%
figure,
subplot(211);plot(sound_6);title("Six");
subplot(212);plot(fgrid_6,fftshift(abs(F_sound_6)));title("Six Freq");
%%

%%
index_1 = find(fftshift(abs(F_sound_1))==max(fftshift(abs(F_sound_1))));
max_1 = fgrid_1(index_1(2));

index_2 = find(fftshift(abs(F_sound_2))==max(fftshift(abs(F_sound_2))));
max_2 = fgrid_2(index_2(2));

index_3 = find(fftshift(abs(F_sound_3))==max(fftshift(abs(F_sound_3))));
max_3 = fgrid_3(index_3(2));

index_4 = find(fftshift(abs(F_sound_4))==max(fftshift(abs(F_sound_4))));
max_4 = fgrid_4(index_4(2));

index_5 = find(fftshift(abs(F_sound_5))==max(fftshift(abs(F_sound_5))));
max_5= fgrid_5(index_5(2));

index_6 = find(fftshift(abs(F_sound_6))==max(fftshift(abs(F_sound_6))));
max_6 = fgrid_6(index_6(2));

F_sound_list=[floor(max_1) floor(max_2) floor(max_3) floor(max_4) floor(max_5) floor(max_6)];
disp(F_sound_list);

%%
disp("The Detected Notes After The Analysis:");

for i=1:6
     if F_sound_list(i)>=349 && F_sound_list(i)<370
        disp("F-1F-1st String or 20F-Second String");

     elseif F_sound_list(i)>=370 && F_sound_list(i)<392
        disp("F#-2F-1st String or 20F-Second String");

     elseif F_sound_list(i)>=392 && F_sound_list(i)<415
        disp("G-4F-1st String or 20F-Second String");

     elseif F_sound_list(i)>=415 && F_sound_list(i)<440
        disp("G#-5F-1st String or 20F-Second String");
        
    elseif F_sound_list(i)>=440 && F_sound_list(i)<466
        disp("A-5F-1st String or 20F-Second String");

    elseif F_sound_list(i)>=466 && F_sound_list(i)<494
        disp("A#-6F-1st String or 20F-Second String");

    elseif F_sound_list(i)>=494 && F_sound_list(i)<523
        disp("B-7F-1st String or 20F-Second String");
        
    elseif F_sound_list(i)>=523 && F_sound_list(i)<554
        disp("C-8F-1st String or 20F-Second String");
  
    elseif F_sound_list(i)>=554 && F_sound_list(i)<587
        disp("C#-9F-1st String or 14F-Second String");

    elseif F_sound_list(i)>=587 && F_sound_list(i)<622
        disp("D-10F-1st String or 15F-Second String");
    
    elseif F_sound_list(i)>=622 && F_sound_list(i)<659
        disp("D#-11F-1st String or 16F-Second String");
 
    elseif F_sound_list(i)>=659 && F_sound_list(i)<698
        disp("E-12F-1st String or 17F-Second String");

    elseif F_sound_list(i)>=698 && F_sound_list(i)<740
        disp("F-13F-1st String or 18F-Second String");

    elseif F_sound_list(i)>=740 && F_sound_list(i)<784
        disp("F#-14F-1st String or 19F-Second String");

    elseif F_sound_list(i)>=784 && F_sound_list(i)<831
        disp("G 15F-1st String or 20F-Second String ");
    
    elseif F_sound_list(i)>=831 && F_sound_list(i)<880
        disp("G#-16F-1st String");

    elseif F_sound_list(i)>=932 && F_sound_list(i)<988
        disp("G-15F-1st String");

     elseif F_sound_list(i)>=988 && F_sound_list(i)<1047
        disp("G-15F-1st String");
    else
        disp("none");
    end
end