my  #!/usr/bin/perl 
 
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
use Gtk2; 
 
Gtk2->init; 
 
my $window = Gtk2::Window->new('toplevel'); 
 
$window->signal_connect (destroy => sub { Gtk2->main_quit; }); 
 
$window->show_all; 
 
Gtk2->main; 

exit(0);
