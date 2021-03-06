%% code2_matrices.m  More demonstration code on matrices


%% more on creating matrices

a = nan( 3, 5 )            % not a number
a = inf( 3, 5 )            % infinite value

a = [ 10 20 30
40 50 60 ];
% same as 
a = [ 10 20 30; 40 50 60 ]
% not clear to me what RM is trying to show here
% not sure you'd ever do the former

%% more mathematical operations on matrices

a = rand( 3 );
c = sin( a )      % pass a matrix to a mathematical function, get a matrix back
c = inv( a )      % matrix inverse
c = a'            % matrix transpose

min( a )          % minimum over rows
min( a, [], 1 )   % minimum over rows
min( a, [], 2 )   % minimum over columns

min( min( a ) )   % minimum of a whole m x n matrix
min( a(:) )       % minimum of a whole matrix
                  % this is because a(:) unwraps a into a column vector

max( a )          % maximum over rows
max( a, [], 1 )   % maximum over rows
max( a, [], 2 )   % maximum over columns

sum( a )          % sum over rows
sum( a, 1 )       % sum over rows
sum( a, 2 )       % sum over columns

prod( a )         % product over rows
prod( a, 1 )      % product over rows
prod( a, 2 )      % product over columns


%% more matrix related functions

a = rand( 3, 5 );
b = numel( a )
b = fliplr( a )
b = flipud( a )
b = rot90( a, 1 )


%% more on subscript indices

a = rand( 5 );
b = a( 1, end-1 )     % use 'end-1' to get the second last element in a row
b = a( : )            % convert a to a column vector

a = rand( 1, 10 );
a( 3 ) = []           % delete an element
a( 1:3 ) = []         % delete several elements


%% logical indexing

a = rand( 3 );

b = a > 0.5            % get a matrix of ones and zeros that indicate which
                       % elements meet some criterion

k = sum( b(:) )        % count the elements that meet the criterion
k = sum( a(:) > 0.5 )  % same thing, more concisely
                
c = a( b )           % get the elements that meet the criterion

c = a( 3, (a( 3,: ) > 0.5) ) % do the same thing, but for individual rows/columns

a( b ) = NaN           % set the elements that meet the criterion to some value
a( a > 0.5 ) = NaN     % same thing, more concisely

x = rand( 5 );       % get some random numbers
y = rand( 5 );       % get some random numbers
sum( x( y>0 ) )      % get the sum of all x's where the corresponding y's meet a criterion
                     % (useful in data analysis, e.g., find mean reaction
                     %  over all trials where stimulus was type A)

e = any( b(:) )      % see if any elements meet the criterion
f = all( b(:) )      % see if all elements meet the criterion

% logical operators
g = a>0.1 & a<0.3
g = xor(a>0.1, a<0.3)
g = ( a>0.1 & a<0.2 ) | ~( a<0.95 )

% logical indices must be type 'logical'


%% linear indexing

% order is by column, then row

a = rand(5);
b = a(1)            % get an element using linear indices
b = a([ 1 2 3 ])    % get multple elements using multiple indices
b = a(1:5)          % use a range
b = a(6:end)        % use 'end'
b = a(:)            % convert to column vector

f = find(a>0.5)     % get the indices for the entries that meet some criterion
b = a(f)            % get the entries that meet the criterion

f = find( ( a>0.1 & a<0.5 ) | ~( a<0.95 ) )    % more complex criteria
b = a(f)            % get the entries that meet the criterion

a([ 1 2 3 ]) = 0    % any of the above can appear on the left side
f = find(a>0.5);
a(f) = 0            

a([ 1 2 3 ]) = [ 10 20 30 ]  % can assign multiple values


%% exercises

% chapter 2, exercises 41, 45, 47
