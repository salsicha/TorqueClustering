function [new_ljmat,cutlinkpower] = Updateljmat(old_ljmat,neiborloc,community,commu_DM,G,ALL_DM)
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

%NNC_UPDATELJMAT Summary of this function goes here

pd=numel(community{1});
if pd>1
community_num=numel(community);

    %cutlinknum=0;
%for i=1:1:community_num
    %cutlinknum=cutlinknum+numel(neiborloc{i});
%end
cutlinknum = sum(~cellfun('isempty', neiborloc));
cutlinkpower=zeros(cutlinknum,7);
th=1;
    for i=1:1:community_num
        if ~isempty(neiborloc{i})
            [linkloc1,linkloc2]=mindisttwinsloc(community{i},community{neiborloc{i}},ALL_DM);
            xx=min(community{i});
            yy=min(community{neiborloc{i}});
            %linkloc1=xx(1);
           % linkloc2=yy(1);
             %linkloc1 = community{i}(1);
            %linkloc2 = community{neiborloc{i}}(1);
            %linkloc1=linklocCell{i,neiborloc{i}}(1);
            %linkloc2=linklocCell{i,neiborloc{i}}(2);
            old_ljmat(linkloc1,linkloc2)=1;
            old_ljmat(linkloc2,linkloc1)=1;
            %[th] = row0loc(cutlinkpower);
            cutlinkpower(th,1)=xx;
            cutlinkpower(th,2)=yy;
            cutlinkpower(th,3)=linkloc1;
            cutlinkpower(th,4)=linkloc2;
            cutlinkpower(th,5)=length(community{i});
            cutlinkpower(th,6)=length(community{neiborloc{i}});
            cutlinkpower(th,7)=commu_DM(i,neiborloc{i});
            th=th+1;
        end
    end
end

if pd==1
    community_num=numel(community);
cutlinkpower=zeros(community_num,7);
th=1;
    for i=1:1:community_num
            %[linkloc1,linkloc2]=maxdisttwinsloc(community{i},community{neiborloc{i}},ALL_DM);
             linkloc1 = community{i}(1);
            linkloc2 = community{neiborloc{i}}(1);
            %linkloc1=linklocCell{i,neiborloc{i}}(1);
            %linkloc2=linklocCell{i,neiborloc{i}}(2);
            %old_ljmat(linkloc1,linkloc2)=1;
            %old_ljmat(linkloc2,linkloc1)=1;
            %[th] = row0loc(cutlinkpower);
            cutlinkpower(th,1)=linkloc1;
            cutlinkpower(th,2)=linkloc2;
            cutlinkpower(th,3)=linkloc1;
            cutlinkpower(th,4)=linkloc2;
            cutlinkpower(th,5)=1;
            cutlinkpower(th,6)=1;
            cutlinkpower(th,7)=commu_DM(i,neiborloc{i});
            th=th+1;
    end
        old_ljmat=G;
end

new_ljmat=old_ljmat;

    
    
end

