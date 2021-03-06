%% code1_intro.m  Basics of MATLAB programming

% orient students to the Matlab interface

%% working directory

% MATLAB commands are written in m files, e.g., code1_intro.m

% percent sign is used for comments
% two percent signs (%%) divide code into sections (cells)

pwd     % show present working directory

ls      % show contents of working directory

cd /Users/kohler/Desktop  % move to new working directory
cd ..                  % move up one directory
cd Desktop             % move down one directory

% these commands do the same thing on the command line terminal

% to run code from an m file ...
% - copy and paste lines into command window (awkward)
% - select code and press shift-F7 (macOS) or F9 (PC)
% - press F5 to run whole file (usually not useful with these demo files)
% - can also customize keyboard shortcuts in MATLAB preferences

%% the path
% determines what functions are available to the user

pathtool  % show and edit MATLAB path

% alternative way of adding code to path

code_path = '/Users/kohler/Desktop/test';
addpath(genpath(code_path))

%% variables and expressions

% assigning values to variables
x = 4
x = 4; % semi-colon stops matlab from printing the result to the command line
x=4  % spacing is not important, but can help with readability

clc  % clear command window; doesn't affect variables (can also use cmd-k)
% use up arrow to revisit previous commands

% use descriptive variable names
x1 = 3;
square_size = 3;
Square_Size = 4;  % names are case sensitive

% bad variable names
1x = 3;   % can't start with a digit
end = 4;  % can't use reserved words
cos = 4;  % shouldn't use function names

% clearing and inspecting variables
clear           % clear all variables
clear x x1 cos  % clear specific variables
who             % list variables
whos            % list variables with information about type, size, etc.
class           % get type of variable (double, integer, string)

% using expressions
x = 5
x = 5 + 5
x = x + 1  % does calculation with x, and then overwrites x with new value
x = x - 1
% operators:  + - * / ^
% scientific notation:  2.4000e+04 means 2.4 x 10^4
% order of operations:  ( ) ^ { * / } { + - }, otherwise leftmost first
format bank  % other formats:  long, short; default is short
% how to convert to bank format:
bank_str = cur2str(102, 2)

% evaluating expressions
5 + 5  % result stored in variable 'ans'
x + 1  % value of x does not change 

%% functions

% using functions with input and output arguments
x = sin( 2 )
y = power( 2, 6 )  % = 2^6

% some useful functions
% - sin, cos, tan (radians); sind, cosd, tand (degrees)
% - round, ceil, floor
% - power, sqrt
% - log, exp
% constants:  pi, i, j, Inf, NaN

% help and documentation
help cos          % help on a specific function
lookfor cosine    % look for help text with a keyword

% quitting matlab
quit  % or command-Q

% tab completion: if you press the first few letters of a function or
%                 matlab will show you a list of options
%                 or simply complete the expression if only one option

%% random numbers

% random number generators

% uniform distribution
rand
10 + 10*rand

% normal distribution
randn
5*randn

% uniform discrete distribution
randi(10)
10 + randi(10)

%% exercises

% chapter 1, exercises 1, 4, 6, 9, 16, 25, 30, 31
