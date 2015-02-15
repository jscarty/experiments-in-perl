#!/usr/bin/perl

#use module
use XML::Simple;
use XML::LibXML::Simple ();
use Data::Dumper;
use strict;
use warnings;

#create object

my $parser = XML::LibXML::Simple->new;

#read XML File

my $xml=$parser->XMLin("archive.xml");
my @list = @{$xml->{sms}};
    for my $sms (@list){
        print $sms->{contact_name}."=>".$sms->{body}."\n";
    }