% Function to update clusters (Batch K-Means)
% Implimented By Soroosh Shalileh
% Supervisor : Professor Boris G. Mirkin
% NRU HSE Faculty of Computer Science
function [clust_label,with_clus] = update_cluster(Y,cent)
    [K,v]=size(cent);
    [N,v]=size(Y);
    for k=1:K
        cc=cent(k,:) %k-th cluster centroid
        Ck=repmat(cc,N,1);
        dif=Y-Ck;
        dist(k,:)=sum((dif.*dif)');  %squared error distance
        %dist(k,:)=sum(dif.*dif);    %% This is completely different
        %compare to equation above becuase this one apply on variables not
        %on the entities.
    end
    [val,ind]=min(dist);
    with_clus=sum(val);     %why sum?
    clust_label=ind;

return



