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
%sampling and nyquist criteria
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

if floor(RHS)==floor(LHS)
    isEqual_1=1;
    disp('-----------1_test_passed-----------')
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

if floor(RHS_2)==floor(LHS_2)
    isEqual_2=1;
     disp('----------2_test_passed------------')
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

if floor(RHS_3)==floor(LHS_3)
    isEqual_3=1;
     disp('----------3_test_passed------------')
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

if floor(RHS_4)==floor(LHS_4)
    isEqual_4=1;
     disp('---------4_test_passed----------')
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

if floor(RHS_5)==floor(LHS_5)
    isEqual_5=1;
     disp('--------5_test_passed----------')
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
disp(RHS_6);

if floor(RHS_6)==floor(LHS_6)
    isEqual_6=1;
     disp('-----------6_test_passed-------------')
else
    isEqual_6=0;
    disp('6_ERROR:A')
end
%%
figure,
subplot(211);plot(sound);title("x(t)");
subplot(212);plot(fgrid,fftshift(abs(F_sound)));title("X(F)");
%%
figure,
subplot(211);plot(sound_1);title("x_1(t)");
subplot(212);plot(fgrid_1,fftshift(abs(F_sound_1)));title("X_1(F)");
%%
figure,
subplot(211);plot(sound_2);title("x_2(t)");
subplot(212);plot(fgrid_2,fftshift(abs(F_sound_2)));title("X_2(F)");
%%
figure,
subplot(211);plot(sound_3);title("x_3(t)");
subplot(212);plot(fgrid_3,fftshift(abs(F_sound_3)));title("X_3(F)");
%%
figure,
subplot(211);plot(sound_4);title("x_4(t)");
subplot(212);plot(fgrid_4,fftshift(abs(F_sound_4)));title("X_4(F)");
%%
figure,
subplot(211);plot(sound_5);title("x_5(t)");
subplot(212);plot(fgrid_5,fftshift(abs(F_sound_5)));title("X_5(F)");
%%
figure,
subplot(211);plot(sound_6);title("x_6(t)");
subplot(212);plot(fgrid_6,fftshift(abs(F_sound_6)));title("X_6(F)");

%%
index_1 = find(fftshift(abs(F_sound_1))==max(fftshift(abs(F_sound_1))));
max_1 = fgrid_1(index_1(2));
f_1 = index_1 * (Fs/N_1) - (Fs/2);
disp(f_1(2));

index_2 = find(fftshift(abs(F_sound_2))==max(fftshift(abs(F_sound_2))));
max_2 = fgrid_2(index_2(2));
f_2 = index_2 * (Fs/N_2) - (Fs/2);
disp(f_2(2));

index_3 = find(fftshift(abs(F_sound_3))==max(fftshift(abs(F_sound_3))));
max_3 = fgrid_3(index_3(2));
f_3 = abs(index_3 * (Fs/N_3) - (Fs/2));
disp(f_3(2));

index_4 = find(fftshift(abs(F_sound_4))==max(fftshift(abs(F_sound_4))));
max_4 = fgrid_4(index_4(2));
f_4 = index_4 * (Fs/N_4) - (Fs/2);
disp(f_4(2));

index_5 = find(fftshift(abs(F_sound_5))==max(fftshift(abs(F_sound_5))));
max_5= fgrid_5(index_5(2));
f_5 = index_5 * (Fs/N_5) - (Fs/2);
disp((f_5(2)));

index_6 = find(fftshift(abs(F_sound_6))==max(fftshift(abs(F_sound_6))));
max_6 = fgrid_6(index_6(2));
f_6 = index_6 * (Fs/N_6) - (Fs/2);
disp(f_6(2));

F_sound_list=[floor(f_1(2)) floor(f_2(2)) floor(f_3(2)) floor(f_4(2)) floor(f_5(2)) floor(f_6(2))];
disp(F_sound_list)

%%
disp("The Detected Notes After The Analysis:");
for i=1:6
    if F_sound_list(i)>=84 && F_sound_list(i)<89
        disp("1ST-F");
        
    elseif F_sound_list(i)>=89 && F_sound_list(i)<94
        disp("1ST-F#");
  
    elseif F_sound_list(i)>=94 && F_sound_list(i)<100
        disp("1ST-G");

    elseif F_sound_list(i)>=100 && F_sound_list(i)<106
        disp("1ST-G#");
    
    elseif F_sound_list(i)>=106 && F_sound_list(i)<112
        disp("1ST-A");
 
    elseif F_sound_list(i)>=112 && F_sound_list(i)<119
        disp("1ST-A#");

    elseif F_sound_list(i)>=119 && F_sound_list(i)<126
        disp("1ST-B");

    elseif F_sound_list(i)>=126 && F_sound_list(i)<134
        disp("1ST-C");
          elseif F_sound_list(i)>=134 && F_sound_list(i)<142
        disp("1ST-C#");
  
    elseif F_sound_list(i)>=142 && F_sound_list(i)<150
        disp("1ST-D");

    elseif F_sound_list(i)>=150 && F_sound_list(i)<159
        disp("1ST-D#");
    
    elseif F_sound_list(i)>=159 && F_sound_list(i)<169
        disp("1ST-E");
 
    elseif F_sound_list(i)>=169 && F_sound_list(i)<179
        disp("2ND-F");

    elseif F_sound_list(i)>=179 && F_sound_list(i)<189
        disp("2ND-F#");

    elseif F_sound_list(i)>=189 && F_sound_list(i)<200
        disp("2ND-G");

    elseif F_sound_list(i)>=200 && F_sound_list(i)<213
        disp("2ND-G#"); 

    elseif F_sound_list(i)>=213 && F_sound_list(i)<225
        disp("2ND-A");

    elseif F_sound_list(i)>=225 && F_sound_list(i)<238
        disp("2ND-A#");

    elseif F_sound_list(i)>=238 && F_sound_list(i)<253
        disp("2ND-B");

    elseif F_sound_list(i)>=253 && F_sound_list(i)<268
        disp("2ND-C");
  
    elseif F_sound_list(i)>=268 && F_sound_list(i)<283
        disp("2ND-C#");

    elseif F_sound_list(i)>=283 && F_sound_list(i)<301
        disp("2ND-D");
    
    elseif F_sound_list(i)>=301 && F_sound_list(i)<318
        disp("2ND-D#");
 
    elseif F_sound_list(i)>=318 && F_sound_list(i)<337
        disp("2ND-E");

    elseif F_sound_list(i)>=337 && F_sound_list(i)<357
        disp("3RD-F");

    elseif F_sound_list(i)>=357 && F_sound_list(i)<379
        disp("3RD-F#");

    elseif F_sound_list(i)>=379 && F_sound_list(i)<401
        disp("3RD-G");
  
    elseif F_sound_list(i)>=401 && F_sound_list(i)<425
        disp("3RD-G#");

    elseif F_sound_list(i)>=425 && F_sound_list(i)<451
        disp("3RD-A");
    
    elseif F_sound_list(i)>=451 && F_sound_list(i)<477
        disp("3RD-A#");
 
    elseif F_sound_list(i)>=477 && F_sound_list(i)<506
        disp("3RD-B");

    elseif F_sound_list(i)>=506 && F_sound_list(i)<536
        disp("3RD-C");

    elseif F_sound_list(i)>=536 && F_sound_list(i)<567
        disp("3RD-C#");
    
    elseif F_sound_list(i)>=567 && F_sound_list(i)<601
        disp("63RD-D");
  
    elseif F_sound_list(i)>=601 && F_sound_list(i)<637
        disp("3RD-D#");

    elseif F_sound_list(i)>=637 && F_sound_list(i)<675
        disp("3RD-E");
    
    elseif F_sound_list(i)>=675 && F_sound_list(i)<715
        disp("4TH-F");
 
    elseif F_sound_list(i)>=715 && F_sound_list(i)<758
        disp("4TH-F#");

    elseif F_sound_list(i)>=758 && F_sound_list(i)<803
        disp("4TH-G");

    elseif F_sound_list(i)>=803 && F_sound_list(i)<851
        disp("4TH-G#");

     elseif F_sound_list(i)>=851 && F_sound_list(i)<902
        disp("4TH-A");
    
    elseif F_sound_list(i)>=902 && F_sound_list(i)<955
        disp("4TH-A#");
  
    elseif F_sound_list(i)>=955 && F_sound_list(i)<1012
        disp("4TH-B");

    elseif F_sound_list(i)>=1012 && F_sound_list(i)<1073
        disp("4TH-C");
   
    else
        disp("none");
    end
end

