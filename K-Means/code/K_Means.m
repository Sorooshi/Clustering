% Function to update clusters (Batch K-Means)
% Implimented By Soroosh Shalileh
% Supervisor : Professor Boris G. Mirkin
% NRU HSE Faculty of Computer Science 
% cluster = explained data scatter
% uds = unexplained data scatter

function [clusters,uds]=K_Means(Y,cent) 
    [N,v]=size(Y);
    [K,v1]=size(cent);
    fl=0; % stop flag
    ms=zeros(N,1); % membership 
    dd=sum(sum(Y.*Y)); % data scatter %--why?
    while fl==0
        [clust_label,with_clust] = update_cluster(Y,cent);
        if isequal(clust_label,ms) % stop condition
            fl=1;
            center = cent;
            w= with_clust;
        else
                cent= update_centroid(Y,clust_label);
                ms= clust_label;
        end
    end  
    % outputs
    uds=w*100/dd; % why?
    clusters.Membership= ms;
    clusters.center= center;
return



        

