%%
%n���ô���������ĸ���
%��������Result�� Result�ڶ���Ϊ�ֵ����� ��һ��Ϊ��ϸ�������

clc
clear
close all

global PossibleGroup

% global NM

% PossibleGroup = [{ [{1},{2}] },{[2,2]} ];
% a = cell(1,1);
% a{1}=[2,1];
% PossibleGroup = [PossibleGroup ; [{a},{[2,1]} ] ];
GetSum1(12,2)
n=12;%���ô���������ĸ���

Result = [];

K=1
sub = [];
for i=1:n
    sub = [sub i];
end
Result = [Result;[{sub},K]];

for K=2:1:n-1
    PossibleGroup = [];
    Sum = GetSnr(n,K);
    FinalList = [PossibleGroup{1,1};PossibleGroup{2,1}];
    Result = [Result;[{FinalList},K]];
    K
end

K=10
sub = [];
for i=1:n
    sub = [sub {i}];
end
Result = [Result;[{sub},K]]


function Sumout = GetSum1(n,m) %��n����ͬ��Ԫ�ز�ֳ�m�����ϵķ�����
    sum = 0;
    for k=0:m
        sum= sum + (-1)^k * GetCnm(m,k) * (m-k)^n;
    end
    Sumout = sum * (1/factorial(m));
    Sumout = round(Sumout);
end

function Cnm = GetCnm(n,m)
    if m==0
        Cnm = 1;
        return;
    end
    Cnm = factorial(n)/(factorial(m)*(factorial(n-m)));
end



