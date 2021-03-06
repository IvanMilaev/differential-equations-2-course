function [x, t] = miln(a, b, n, x0)
    % ����� �?��� ��� ��������?������� �?������
    % a, b - ���? ?�������� �� ����� ����?���� ����'����
    % n - �?���?��� ����� ��? �������� � ����� ?�������?
    h = (b - a) / n;
    x(1) = x0; 
    xp(1) = x(1);
    t = 1:n+1;
    for i = 1:n+1 
        t(i) = a + (i-1)*h;
    end
    
    % ����� �����-�����
    for i = 2:4
        K1 = f(t(i-1), x(i - 1));
        K2 = f(t(i-1) + h/2, x(i-1) + h/2 * K1);
        K3 = f(t(i-1) + h/2, x(i-1) + h/2 * K2);
        K4 = f(t(i-1) + h, x(i-1) + h * K3);
        
        delta = h/6 * (K1 + 2*K2 + 2*K3 + K4);
        x(i) = x(i-1) + delta;
        xp(i) = x(i);
    end
    
    
    for i = 4:n 
        
        xp(i+1) = x(i-3) + 4*h/3 * (2*f(t(i-2), x(i-2)) - f(t(i-1), ...
            x(i-1)) + f(t(i), x(i)));
        
      
        m = xp(i+1) + 28/29 * (x(i) - xp(i));
        
        
        x(i+1) = x(i-1) + h/3 * (f(t(i-1), x(i-1)) + 4*f(t(i), ...
            x(i)) + f(t(i+1), m));
    end
end