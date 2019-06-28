% clear
% Folder = dir('*.txt');
% 
% [A B C D E F G] = Clasificador1(Folder)

function [bg L Def bgV LC PL PLV T] = Clasificador1(Folder)

fondo = 'Bg';
fondoV = 'BgV';
laser = 'L';
laserC = 'Laser';
difeL = 'Def';
pl = 'PL';
plv = 'PLV';

% mkdir(fullfile('BackGround')); 
% mkdir(fullfile('post-laser')); 
% mkdir(fullfile('Deaferenciada')); 

bg = cellstr('');
bgV = cellstr('');
L = cellstr('');
LC = cellstr('');
Def = cellstr('');
PL = cellstr('');
PLV = cellstr('');

num1bg = 1;
num2bg = 1;
num3bg = 1;
num4bg = 1;
num5bg = 1;

num1PL = 1;
num2PL = 1;
num3PL = 1;
num4PL = 1;
num5PL = 1;

num1PLV = 1;
num2PLV = 1;
num3PLV = 1;
num4PLV = 1;
num5PLV = 1;


num1bgV = 1;
num2bgV = 1;
num3bgV = 1;
num4bgV = 1;
num5bgV = 1;

num1L = 1;
num2L = 1;
num3L = 1;
num4L = 1;
num5L = 1;


num1LC = 1;
num2LC = 1;
num3LC = 1;
num4LC = 1;
num5LC = 1;

num1def = 1;
num2def = 1;
num3def = 1;
num4def = 1;
num5def = 1;




for i = 1:length(Folder)
    name = Folder(i).name;
    if fondo == name(7:8)
       if '1' == name(end-6) || 'g'==name(end-6)
       bg(num1bg,1) = cellstr(name);
       num1bg = num1bg +1;
       end
       
       if '2' == name(end-6)
       bg(num2bg,2) = cellstr(name);
       num2bg = num2bg +1;
           
       end
       
       if '3' == name(end-6)
       bg(num3bg,3) = cellstr(name);
       num3bg = num3bg +1;
       end
       
       if '4' == name(end-6)
       bg(num4bg,4) = cellstr(name);
       num4bg = num4bg +1;
       end
       
       if '5' == name(end-6)
       bg(num5bg,5) = cellstr(name);
       num5bg = num5bg +1;
       end
       
       
    end
    
    
    if pl == name(7:8)
 
       if '1' == name(end-6) || 'L'==name(end-6)
       PL(num1PL,1) = cellstr(name);
       num1PL = num1PL +1;
       end
       
       if '2' == name(end-6)
       PL(num2PL,2) = cellstr(name);
       num2PL = num2PL +1;
           
       end
       
       if '3' == name(end-6)
       PL(num3PL,3) = cellstr(name);
       num3PL = num3PL +1;
       end
       
       if '4' == name(end-6)
       PL(num4PL,4) = cellstr(name);
       num4PL = num4PL +1;
       end
       
       if '5' == name(end-6)
       PL(num5PL,5) = cellstr(name);
       num5PL = num5PL +1;
       end
       
       
    end
    
    
    
    
    
    if plv == name(7:9)
 
       if '1' == name(end-6) || 'V'==name(end-6)
       PLV(num1PLV,1) = cellstr(name);
       num1PLV = num1PLV +1;
       end
       
       if '2' == name(end-6)
       PLV(num2PLV,2) = cellstr(name);
       num2PLV = num2PLV +1;
           
       end
       
       if '3' == name(end-6)
       PLV(num3PLV,3) = cellstr(name);
       num3PLV = num3PLV +1;
       end
       
       if '4' == name(end-6)
       PLV(num4PLV,4) = cellstr(name);
       num4PLV = num4PLV +1;
       end
       
       if '5' == name(end-6)
       PLV(num5PLV,5) = cellstr(name);
       num5PLV = num5PLV +1;
       end
       
       
    end
    
    
    
    
    if fondoV == name(7:9)
       
       if '1' == name(end-7) || 'g'==name(end-7)
       bgV(num1bgV,1) = cellstr(name);
       num1bgV = num1bgV +1;
       end
       
       if '2' == name(end-7)
       bgV(num2bgV,2) = cellstr(name);
       num2bgV = num2bgV +1;
           
       end
       
       if '3' == name(end-7)
       bgV(num3bgV,3) = cellstr(name);
       num3bgV = num3bgV +1;
       end
       
       if '4' == name(end-7)
       bgV(num4bgV,4) = cellstr(name);
       num4bgV = num4bgV +1;
       end
       
       if '5' == name(end-7)
       bgV(num5bgV,5) = cellstr(name);
       num5bgV = num5bgV +1;
       end
       
       
    end
    
    if laser == name(7)
       if '1' == name(end-6) || 'L'==name(end-6)
       L(num1L,1) = cellstr(name);
       num1L = num1L +1;
       end
       
       if '2' == name(end-6)
       L(num2L,2) = cellstr(name);
       num2L = num2L +1;
           
       end
       
       if '3' == name(end-6)
       L(num3L,3) = cellstr(name);
       num3L = num3L +1;
       end

       if '4' == name(end-6)
       L(num4L,4) = cellstr(name);
       num4L = num4L +1;
       end
       
       if '5' == name(end-6)
       L(num5L,5) = cellstr(name);
       num5L = num5L +1;
       end
       
    end
    
    
    if laserC == name(7:11)
       if '1' == name(12) || 'L'==name(7)
       LC(num1LC,1) = cellstr(name);
       num1LC = num1LC +1;
       end
       
       if '2' == name(12)
       LC(num2LC,2) = cellstr(name);
       num2LC = num2LC +1;
           
       end
       
       if '3' == name(12)
       LC(num3LC,3) = cellstr(name);
       num3LC = num3LC +1;
       end

       if '4' == name(12)
       LC(num4LC,4) = cellstr(name);
       num4LC = num4LC +1;
       end
       
       if '5' == name(12)
       LC(num5LC,5) = cellstr(name);
       num5LC = num5LC +1;
       end
       
    end
    
    
    
    if difeL == name(7:9)
       if '1' == name(end-6) || 'f'==name(end-6)
       Def(num1def,1) = cellstr(name);
       num1def = num1def +1;
       end
       
       if '2' == name(end-6)
       Def(num2def,2) = cellstr(name);
       num2def = num2def +1;
           
       end
       
       if '3' == name(end-6)
       Def(num3def,3) = cellstr(name);
       num3def = num3def +1;
       end
       if '4' == name(end-6)
       Def(num4def,4) = cellstr(name);
       num4def = num4def +1;
       end
       
       if '5' == name(end-6)
       Def(num5def,5) = cellstr(name);
       num5def = num5def +1;
       
       end
    end
end


T.bg =bg;
T.L = L;
T.Def= Def; 
T.bgV =bgV;
T.LC = LC;
T.PL = PL;
T.PLV = PLV;






end