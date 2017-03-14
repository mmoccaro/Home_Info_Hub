#!/usr/bin/env perl 
 
#  File: home_info_hub_main.pl 
#  Type: Perl Source File  
#  Date: February 21, 2017  
#  
#  Description:  
#  This is the main file for the Home Info Hub project. 
 
#Pragmas
use strict;
use warnings;
use utf8;
use Gtk2 -init; 
 
#Initialize GTK and create a main window 
my $window = Gtk2::Window->new('toplevel');  
$window->signal_connect (destroy => sub { Gtk2->main_quit; }); 
$window->set_decorated(0);
$window->set_position('center');
$window->maximize();

#Show the window and its components
$window->show_all; 

#Start The Main Loop
Gtk2->main; 

#Exit Success
exit(0);
