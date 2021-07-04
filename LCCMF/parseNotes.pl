#!/usr/bin/perl

require 'Clean';

use Getopt::Std;
$ret = getopts('dhs');
if (!$ret) {
    print STDERR "Usage: $0 [-dhs]...\n";
    print STDERR "      -d  debug\n";
    print STDERR "      -h  expect column names\n";
    print STDERR "      -s  print sheets\n";
    exit 1;
}
$debug = $opt_d;


$noteID = 0;

if ( $opt_h ) {
    $line = <>;
    if ( $opt_s ) {
	print join("\t", "SHEET", "pad_id", "pad_type", "note"), "\n";
    }
    else {
	print join("\t", "DISCUSSION", "id", "date", "color"), "\n";
    }
}

while ( <> ) {
    chop;
    #print join("^", $_, "\n") if $debug;

    next if /^$/;

    ($date, $color, $note) = split(/\t/);
    Clean($date, $color, $note);
    $noteID ++;

    if ( $opt_s ) {
	print join("\t", "SHEET", $noteID, "Discussion", $note), "\n";
    }
    else {
	print join("\t", "DISCUSSION", $noteID, $date, $color), "\n";
    }
}
