#!/usr/bin/perl -s
#use warnings;
#use strict;

my $filename = shift || 'file.txt';
if (-e $filename) {}
else {print "\n File $filename not found, please check file exists\n"; exit;}



open (file, $filename) or die;
@file= <file>;
close file;


print "Seq1\tSeq2\tTot Score\tTot Energy\tMax Score\tMax Energy\tStrand\tLen1\tLen2\tPositions\n";

my $line = "";
foreach (@file)
        {
        $line = "$_";
        if ($line =~ /^>>(\S+)\t\S+/)
                {
                print $line;
                }
        }
