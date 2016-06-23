
clc
clear

syms x y z
% ask differentiation or integration
task = input( 'differentiation enter "d" \n integration enter "i" \n find limit enter "l"','s');

if task=='d' 
    %differentiate univariate function or multivariate function
    uniormulti=input('Univariate or multivariate? (uni/multi): ','s');
    tf = strcmp(uniormulti,'uni');
    
    if tf==1
        
    
        % input function prompt
        fun=input('enter function to differentiate (use variable x):');
    
        % ask for the order of differentiation prompt
        order = input ('differentiate this function to the order of: ');
    
        %differentiate function
        f(x)=diff(fun,x,order);
        disp('The differentiated function is:');
        disp(f(x));

        % graph differentiated function if user chooses to
        graphchoice = input ('do you want to graph the differentiated function? (yes/no) :','s');
        tf = strcmp(graphchoice,'yes');
    
        % to graph symbolic expression use fplot
        % have to convert function to type char
        if tf == 1
            fplot(char(f(x)),[-2*pi 2*pi])
       
        end
        
    else 
        % input function prompt
        fun=input('enter function to differentiate (up to 3 variables of x,y,or z):');
        
        % differentiate with respecct to which variable
        variable = input('which variable do you want to differentiate with respect to? (x/y/z):','s');
        
        
    
        % ask for the order of differentiation prompt
        order = input ('differentiate this function to the order of: ');
    
        %differentiate function
        f(x)=diff(fun,variable,order);
        disp('The differentiated function is:');
        disp(f(x));
    end
      
    
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
        g(x)=int(fun);
        disp('the integrated function is: ');
        disp(g(x));
        
        % graphing
        graphchoice = input ('do you want to graph integrated function? yes/no: ','s');
        tf = strcmp(graphchoice,'yes');
        
        if tf==1;
            fplot(char(g(x)),[-2*pi 2*pi]);
        end
            
        
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

   