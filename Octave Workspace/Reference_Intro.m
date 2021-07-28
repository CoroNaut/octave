%% MATLAB Basics

% Locate the following:

% File Browser 
% Command History 
% Workspace 
% Command Window 
% Script Editor

%% Comments

% Anything after % on a line is a comment line and will be ignored

%{
  This is a block comment. 
  It can extend across multiple lines.
  And will also be ignored.
%}

% In MATLAB 7 or later, double percent sign followed by a space can be used to
% divide a script (see below) into cells. Activating cell-mode in the script
% window allows you to run your commands one cell at a time. The cell can be
% named by adding text on the same line.

%% Scalar Operations

2+3	% Addition
5-4	% Subtraction
2*7	% Multiplication
4/3	% Division
5^2	% Exponentiation

% Usual order of operations holds:

1-3/2^2 	% Same as 1-(3/(2^2))
-4^3		% Same as -(4^3)

%% Variables

x = 1+1 	% Variables save the results of calculations.
x 		% Entering the name of the variable outputs the value.
x+1		% Variables can be used in subsequent calculations.
y = x+1  	% Which can in turn be stored in other variables.
x = 5		% We can reassign the value of a variable at any time.
y		% Changing the value of x did not change y.

%% Matrix Operations

[1 2 3] 		% A row vector
[1 2 3]'		% A column vector
[1 2 3; 4 5 6] 		% A 2x3 matrix (2 rows 3 columns)
[1; 2; 3]		% Another column vector

% Pointwise operations

[1 2 3] .+ 2	% Add a scalar to every entry
[1 2 3] .- 2	% Subtract a scalar from every entry
[1 2 3] .* 3    % Multiply each entry by a scalar
[1 2 3] ./ 5	% Divide each entry by a scalar
[1 2 3] .^ 2    % Raise each entry to a power

[1 2 3] + [4 5 6] 	% Matrix addition (must be same size)
[1 2 3] - [4 5 6] 	% Matrix subtraction (must be same size)

A = [1 2 3; 4 5 6; 7 8 9]	% A matrix stored in a variable 
B = [1 1 1; 2 2 2; 3 3 3]	

A*B	% Matrix multiplication (matrix algebra operation)
A^2	% Matrix exponentiation (matrix algebra operation)

A(2,3)  % Access the element in the 2nd row 3rd column of the matrix A

%% Managing the Workspace Environment

who	% Shows the variables currently defined
whos	% Same, but includes size and class information

clc 	% Clears the command window of old output (screen only)
clear	% Deletes all variables

%% Semicolons

z=5; 	% No output
z	% but the assignment was still made

%% Scripts

% A script is essentially a list of saved commands to be executed in sequence.
% Scripts can be written, saved, and run in the script editor window.
% Output is sent to the command window.
% Scripts are saved with the file extension .m called an M-file.

%% Saving Workspace (.mat) vs. Saving Scripts (.m)

% The workspace data (variables) can be saved as a .mat file.
% Opening the .mat file restores the workspace variables and their values.

%% Variables vs. Constants

% Some programming languages have special data types for storing values that 
% never change, called constants. For example the value of pi.

pi	% Returns the value of pi (approximately)
i	% Returns the complex number sqrt(-1)
j	% Same as i

% Technically these are not constants or variables, but functions that take no
% inputs and return a value. They can be overwritten:

pi = 3	% Now pi is the name of a variable
pi	% Returns 3

% This can be fixed by clearing the variable.

clear pi	% Delete the variable pi
pi		% Now pi again gives the expected result

ans		% Default var giving the result of the last calculation

%% Variable Names

% Variable names must start with a letter.
% They can only contain letters numbers and underscores.

isvarname my_var 	% Check if my_var is a valid variable name
			% 0 means 'true' and 1 means 'false'

% Some keywords are reserved and can't be variable names

iskeyword		% List all reserved names





