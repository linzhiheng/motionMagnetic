function R = unitIntegrate(unit,point)
    %输入检查，输入的p1和p2需要是一个含有两个元素的数组
    validateattributes(unit,{'struct'},{'size',[1,1]},'unitIntegrate','unit',1);
    validateattributes(point,{'numeric'},{'numel',2},'unitIntegrate','point',2);
    %检查结束
    
    c = [0,0,0,0];
    c(1) = unit.coords(1,:);
    c(2) = unit.coords(2,:);
    c(3) = unit.coords(3,:);
    c(4) = unit.coords(4,:);
    center = getCenterCoords(c(1), c(2), c(3), c(4));
    
    radius = getRadius(point,center);
    
    R = 0;
end