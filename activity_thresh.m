list = {'Walking','Jogging','Running','Athletic'};
[indx,tf] = listdlg('PromptString','Please select your activity',...
                    'ListString',list,...
                    'Name','Activity',...
                    'SelectionMode','single',...
                    'ListSize',[200,100],...
                    'OkString','Apply',...
                    'CancelString','Custom');
                
if isequal(tf,0)
    %uiwait(msgbox('Threshold set to the default of 3.'))
    %thresh = 3;
        prompt2 = {'Enter Custom Threshold: '};
        Cust = 'Threshold';
        dims2 = [1 40];
        definput2 = {''};
        custthresh = inputdlg(prompt2,Cust,dims2,definput2);
        thresh = str2double(char(custthresh));
            if isnan(thresh)
                disp('Threshold not defined')
                return
            end
else
    switch indx
        case 1
            thresh = 3;
        case 2
            thresh = 4;
        case 3
            thresh = 5;
        case 4
            thresh = 6;
    end
end