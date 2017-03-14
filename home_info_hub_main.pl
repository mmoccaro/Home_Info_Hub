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

#Button
my $wifi_button = Gtk2::Button->new('WiFi Password');
my $temp_button = Gtk2::Button->new('Temperature');
my $internet_button = Gtk2::Button->new('Internet Status');
my $phone_button = Gtk2::Button->new('Phone Numbers');

#Create A Table
my $table = Gtk2::Table->new(4,2, 'FALSE');
$table->attach_defaults($wifi_button, 1, 2, 0, 1);
$table->attach_defaults($temp_button, 1, 2, 1, 2);
$table->attach_defaults($internet_button, 1, 2, 2, 3);
$table->attach_defaults($phone_button, 1, 2, 3, 4);

$window->add($table);

#Show the window and its components
$window->show_all; 

#Start The Main Loop
Gtk2->main; 

#Exit Success
exit(0);
