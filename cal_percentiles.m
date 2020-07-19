% A SIMPLE WAY TO CALCULATE PERCENTILES
function [percentiles] = cal_percentiles(sequence,x)
%from LJY
%Cal the percentiles,sequence---total data sequence£¬
%                    x----one data which you want to get the
%                          PERCENTILES(%)
%for example,cal_percentiles([2 4 6 -1 7 0 9 6 5],3),ans=39

t_percentiles=tiedrank(sequence)/length(sequence)*100;
if isempty(t_percentiles(find(sequence==x)))&&((x>max(sequence))||(x<min(sequence)))
    error('Out of Range');    
else
    %percentiles= interp1(unique(sequence),unique(t_percentiles),x);
    percentiles=round(interp1(unique(sequence),unique(t_percentiles),x));
end
end
