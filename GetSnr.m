function Result = GetSnr(n,m)
    global PossibleGroup
%     global NM
%     NM = [NM;[n,m]];
    if m==1
        Result = 1;
%         a = cell(1,1);
%         a{1}=[2,1];
%         PossibleGroup = [PossibleGroup ; [{a},{[2,1]} ] ];
        
%         PossibleGroupsub = [];
%         for i=1:n
%             PossibleGroupsub = [PossibleGroupsub,i];
%         end
%         PossibleGroup = [PossibleGroup ; [ {[{PossibleGroupsub},n+1]} , {[n+1 m+1]} ]];
        return;
    end
    if m==0
        Result = 0;
        return;
    end
    if n==m
        Result = 1; 
        
%         PossibleGroupsub = [];
%         for i=1:n
%             PossibleGroupsub = [PossibleGroupsub,{i}];
%         end
%         
%         PossibleGroup = [PossibleGroup ; [{PossibleGroupsub},{[n,n]}]]
        return;
    end
    
    Result = m * GetSnr(n-1,m) + GetSnr(n-1,m-1);
    
    if n-1==m
        PossibleGroupsub = [];
        for i=1:m
%             PossibleGroupsub = [PossibleGroupsub,{i}];
            PossibleGroupsub = [PossibleGroupsub,{i}];
        end
        PossibleGroup = [PossibleGroup ; [{PossibleGroupsub},{[n-1,m]}]];
        
        i=0;
        num = size(PossibleGroup,1);
        PossibleGroupsub = [];
        while 1
            i=i+1;
            if i<=num
                if norm(PossibleGroup{i,2}-[n-1 m])<0.001
                    PossibleGroupsub = [PossibleGroupsub ; PossibleGroup{i,1}];
                    PossibleGroup(i,:)=[];
                    i=i-1;
                    num=num-1;
                end
            else
                break;
            end
        end

        storage = PossibleGroupsub;
        AddPossibleGroupsub = [];
        for lie = 1:size(PossibleGroupsub,2)
            PossibleGroupsub = storage;
            for i=1:size(PossibleGroupsub,1)
%                 PossibleGroupsub(i,lie) = {[PossibleGroupsub(i,lie),n]};
                PossibleGroupsub(i,lie) = {[PossibleGroupsub{i,lie},n]};
            end
            AddPossibleGroupsub = [AddPossibleGroupsub ; PossibleGroupsub];
        end
        PossibleGroup = [PossibleGroup ; [ {AddPossibleGroupsub} , {[n m]} ]];
        
    else
        i=0;
        num = size(PossibleGroup,1);
        PossibleGroupsub = [];
        while 1
            i=i+1;
            if i<=num
                if norm(PossibleGroup{i,2}-[n-1 m])<0.001
                    PossibleGroupsub = [PossibleGroupsub ; PossibleGroup{i,1}];
                    PossibleGroup(i,:)=[];
                    i=i-1;
                    num=num-1;
                end
            else
                break;
            end
        end

        storage = PossibleGroupsub;
        AddPossibleGroupsub = [];
        for lie = 1:size(PossibleGroupsub,2)
            PossibleGroupsub = storage;
            for i=1:size(PossibleGroupsub,1)
%                 PossibleGroupsub(i,lie) = {[PossibleGroupsub(i,lie),n]};
%                 PossibleGroupsub(i,lie) = {[PossibleGroupsub(i,lie),n]};
                PossibleGroupsub(i,lie) = {[PossibleGroupsub{i,lie},n]};
            end
            AddPossibleGroupsub = [AddPossibleGroupsub ; PossibleGroupsub];
        end
        PossibleGroup = [PossibleGroup ; [ {AddPossibleGroupsub} , {[n m]} ]];
    
    end
    
%     groupsub = [];
%     for i=1:m
%         groupsub = [groupsub {i}];
%     end
%     PossibleGroupsub = [];
%     for i=1:m
%         groupsubtemp = groupsub;
%         groupsubtemp(i) = {[groupsubtemp(i),n]};
%         PossibleGroupsub = [PossibleGroupsub ; groupsubtemp];
%     end

    if m-1==1
        PossibleGroupsub = [];
        for i=1:n-1
            PossibleGroupsub = [PossibleGroupsub,i];
        end
        PossibleGroup = [PossibleGroup ; [ {[{PossibleGroupsub},n]} , {[n m]} ]];
    else
        PossibleGroupsub = [];
        num = size(PossibleGroup,1);
        i=0;
        while 1
            i=i+1;
            if i<=num
                if norm(PossibleGroup{i,2}-[n-1 m-1])<0.001
                    PossibleGroupsub = [PossibleGroupsub ; PossibleGroup{i,1}];
                    PossibleGroup(i,:)=[];
                    i=i-1;
                    num=num-1;
                end
            else
                break;
            end
        end
        lie = size(PossibleGroupsub,2);
        for i=1:size(PossibleGroupsub,1)
            PossibleGroupsub(i,lie+1) = {n};
        end
        if isempty(PossibleGroupsub)==0
            PossibleGroup = [PossibleGroup ; [ {PossibleGroupsub} , {[n m]} ]];
        end
    end
end
