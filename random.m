clc;
clear all;

t=SS(100,0.7,0.8);
%sn生成随机数的个数(保存为列向量），w大区间所在的概率，smax大区间起始位置
%sn：the number of random numbers (Save as column vector)，w:Probability of large interval,smax:Starting position of the large interval

function [SX]=SS(sn,w,smax)   
SX=zeros(sn,1);
for i=1:sn
    t=rand(1,1);
    if t<w
        SX(i,1)=rand(1,1)*(1-smax)+smax;
    else
        SX(i,1)=rand(1,1)*smax;
    end
end
end