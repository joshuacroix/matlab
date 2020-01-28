% By submitting this assignment, I agree to the following:
% "Aggies do not lie, ceat, or steal or tolerate those who do"
% "I have not given or received unauthorized aid on this assignment"
%
% Name: Joshua Croix
% Section: 501
% Team: N/A
% Assignment: Matlab 1
% Date: 11Sep18

%Print the string "Howdy, World!"
disp('Howdy, World!')
%Activity 2 -----
%Start from clean state
clear all
%Use help input
help input
%Use input to get user's name and address
name = input('What is your name?','s');
age = input('What is your age?','s');
%Use disp to print statement
fprintf('\nHowdy %s! You are %s years old\n',name,age)
%Lightning.m Activity 3
time =('How many seconds after the flash was the sound?')
dist = time * 1100 / 5280;
fprintf('\nThe lightning is %.3f seconds away\n',dist)
