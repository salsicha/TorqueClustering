function [Idx] = Final_label(labels1,labels2)
% -----------------------------------------------------------------------------
%  Torque Clustering - Matlab Implementation
%  Copyright (C) Jie Yang
%
%  Licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0
%  International (CC BY-NC-SA 4.0)
%
%  This code is intended for academic and research purposes only.
%  Commercial use is strictly prohibited. Please contact the author for licensing inquiries.
%
%  Author: Jie Yang (jie.yang.uts@gmail.com)
% -----------------------------------------------------------------------------

%FINAL_LABEL 此处显示有关此函数的摘要
%   此处显示详细说明
Idx=labels1;

uni_labels1=unique(labels1);
uninum1=numel(uni_labels1);
uni_labels2=unique(labels2);
uninum2=numel(uni_labels2);
for i=1:1:uninum1
    mainloc=[];
    class_loc=find(labels1==uni_labels1(i));
    for j=1:1:uninum2
        zj_loc=find(labels2==uni_labels2(j));
        if all(ismember(zj_loc,class_loc))&&numel(zj_loc)>numel(mainloc)
            mainloc=zj_loc;
        end
    end
 class_noise_loc=setdiff(class_loc, mainloc);
 Idx(class_noise_loc)=0;
end
end

