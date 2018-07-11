#!/usr/bin/perl

use Getopt::Std;
$ret = getopts('deht:');
if (!$ret) {
    print STDERR "Usage: $0 [-g insGroup]...\n";
    print STDERR "      -e  trace for errors\n";
    print STDERR "      -d  debug\n";
    print STDERR "      -t  [tableName]\n";
    print STDERR "      -h  expect column names\n";
    exit 1;
}
$debug = $opt_d;
$tableName = "Table";
$tableName = $opt_t if $opt_t;

print join("^", "tableName", $opt_t, "\n") if $debug;

if ( $opt_h ) {
    #
    # deal with column names
    #
    $line = <>;
    chop($line);
    print join("^", $line, "\n") if $debug;
    @columnNames = split("\t", $line);
    print join("^", "columnNames", @columnNames, "\n") if $debug;
}

while ( <> ) {
    chop;
    $line = $_;
    print join("^", $line, "\n") if $debug;

    @fields = split("\t");
    print join("^", "fields", @fields, "\n") if $debug;

    print ("puts \'--" . join("|", @fields) . "\'", "\n") if $opt_e;
    print $tableName . ".create!(";
    $first = 1;
    foreach $i (0 .. $#fields) {
	print ", " if ! $first;
	print $opt_h ? $columnNames[$i] : "field";
	print ": \'" . $fields[$i] . "\'";
	$first = 0;
    }
    print ")\n";
}

#Composer.create(name: 'David Ludwig', nickname: 'Ludwig', lifetime: '(b. 1974)')

