%% code1_ifelse.m  Demonstration code for if-else statements

%% input and output to scripts and functions
% input

% ask the user to enter a number between 0 and 1
num = input('enter a number between 0 and 1:  ');

% can be useful in scripts and functions, although my preference
% is usually to let the user provide input by modying variable(s)
% in the script, or by deciding on an input variable to a function

% output
disp(num) % simply displays the variable, no formatting
fprintf('%d', num) % first argument (%d) specifies formatting
                   % %d, %f, %s, %5.2f (field width, # decimal places)
                   % see doc fprintf and pp. 88-90 in the textbook
                   
% I sometimes use disp or fprintf to print statements
% about what the program is doing to the command line.
% In my work, the final output of a script is usually: 
%       (a) one or more variables to the command line 
%       (b) a file that is saved to the disk
%       (c) one or more figures that are displayed / saved

%% if-elseif-else

% if clause
%   action
% end

% if statement
if num < 0
	x = 0;
end

% if-else
if num < 0
	x = -1;
else
	x = 1;
end

% if-elseif-else
if num < -10
	x = -2;
elseif num < 0
    x = -1;
elseif num == 0  % use == to test for equality (not =)
    x = 0;
elseif num <= 10
    x = 1;
else
    error('num not in desired range')
end

% note that any non-zero statement evaluates to logical true
if 5
    fprintf('5 is true\n\n');
end

% nested if-else
if num < 0
    
    if num < -5
        x = -2;
    else
        x = -1;
    end
    
else
    x = 1;
end

% logical operations
%   && = and
%   || = or
%   ~  = not

% note the use of parentheses to control order of operations
a = rand;
b = rand;
if ( a>0.5 && b>0.5 ) || ~( a>0.9 )
	x = 0;
else
    x = 1;
end

% use || && ~ only works for scalars, often used for if-elseif-else (also switch and while)
 
% use |  &  ~ works for element-wise and matrix operations, often used for logical indexing; will cover these later

%% switch

ice_cream = 'chocolate';

switch ice_cream
    case 'chocolate'
        fprintf('\n%s tastes bad\n', ice_cream)
    case 'vanilla'
        fprintf('\n%s tastes good\n', ice_cream)
    case 'strawberry'
        fprintf('\n%s tastes great\n', ice_cream)
    otherwise
        fprintf('\nhm ... not so sure about %s \n', ice_cream)
end


%% exercises

% chapter 4, exercises 11, 14, 16, 20
