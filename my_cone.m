
function result=my_cone(z,percentage,ion_noB)
% ���ݸ�����z��������Ӧ��percentage%�����ĵ�������׶���r����
% ion_noB�ǽ�ion_n_v_t_xxxx.txt��textscan����Ĵ�����

dx = 1.66e-5;
flux_total = 0;
for r=0:0.1:(1-0.1)
    flux_total = flux_total + 0.5*(ion_noB{6}(int32(1+r/0.1*201))+ion_noB{6}(int32(1+(r+0.1)/0.1*201))) * 0.5*(ion_noB{9}(int32(1+r/0.1*201))+ion_noB{9}(int32(1+(r+0.1)/0.1*201))) * dx;
end
r=0;
flux = 0;
for r=0:0.1:(12.0-0.1)
    flux = flux + 0.5*(ion_noB{6}(int32(z/0.1+1+r/0.1*201))+ion_noB{6}(int32(z/0.1+1+(r+0.1)/0.1*201))) * 0.5*(ion_noB{9}(int32(z/0.1+1+r/0.1*201))+ion_noB{9}(int32(z/0.1+1+(r+0.1)/0.1*201))) * dx;
    if flux/flux_total>=percentage
        break 
    end
end
result = r+0.05;

end