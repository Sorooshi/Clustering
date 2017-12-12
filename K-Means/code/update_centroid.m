% Function to update centroids (Batch K-Means)
% Implimented By Soroosh Shalileh
% Supervisor : Professor Boris G. Mirkin
% NRU HSE Faculty of Computer Science

function centers=update_centroid(Y,clust_label)
    K=max(clust_label);
    for k=1:K
        indc=find(clust_label==k);
        elemk=Y(indc,:);
        centers(k,:)=mean(elemk);
    end
return










