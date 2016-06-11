
clc
clear

syms x
% ask differentiation or integration
task = input( 'differentiation enter "d" \n integration enter "i" \n find limit enter "l"','s');

if task=='d' 
    %differentiate univariate function 
    
    % input function prompt
    fun=input('enter function to differentiate:');
    
    % ask for the order of differentiation prompt
    order = input ('differentiate this function to the order of: ');
    
    %differentiate function
    diff(fun,x,order)

    
elseif task=='i'
    
    

    % integrate univariate functions


    % prompt to determine definite or indefinite
    def= input('Definite or indefinite integration? \n if definite enters "d" \n if indefinite enters "i"','s');

    if def == 'd'
     
        % prompt to input fuction
        fun=input('enter function to integrate:');

        % prompt to input range
        from = input('integrate from x =');
        to = input('to x =');

        disp('result of integration is:');

        %integrate
        int(fun,x,from,to)

    elseif def== 'i'
        % input function
        fun = input ('enter function to integrate:');
        
        % integrate
        int(fun)
        
    else
        disp('invalid input');
        
    end
    
elseif task == 'l'
    
    % prompt ask for function
    fun = input('enter function to find limit: ');
    
    % prompt ask for limit of x
    xlimit = input ('find the limit of this function when x goes to...?');
    
    % find limit
    lim=limit(fun, xlimit);
    
    % if answer is infinite (NaN), function diverges
    if isnan(lim)
        disp('function diverges');
    else disp(lim);
    end
        
    
else
        disp('invalid input');
end

   