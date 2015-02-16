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

my $xml=$parser->XMLin("archive.xml",
    ForceArray=> 1,
#    KeyAttr => "date",
);
my %call_count = ();
my @list = @{$xml->{sms}};
    for my $sms (@list){
#        print $sms->{contact_name}."=>".$sms->{address}."\n";
#        foreach {
#            $call_count{$sms->{contact_name}}++;
#        }
        if ( exists($call_count{$sms->{contact_name}}) ){
            $call_count{$sms->{contact_name}}++;
#            print "true";
        }else{
            $call_count{$sms->{contact_name}} = '1';
#            print "false \n";
        }
#        print Dumper(%call_count);
    }
#foreach my $name (keys %call_count) {
#            print "$name: $call_count{$name}\n";
#        };

foreach my $text_count (sort {$call_count{$b} <=> $call_count{$a}} keys %call_count) {
    print "$text_count: $call_count{$text_count}\n";
};
    
    