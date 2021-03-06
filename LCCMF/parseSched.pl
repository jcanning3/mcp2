#!/usr/bin/perl

require 'Clean';

use Getopt::Std;
$ret = getopts('deht');
if (!$ret) {
    print STDERR "Usage: $0 [-deht]...\n";
    print STDERR "      -d  debug\n";
    print STDERR "      -e  dump event_team maps\n";
    print STDERR "      -h  expect column names\n";
    print STDERR "      -t  dump tables\n";
    exit 1;
}
$debug = $opt_d;

%mapLocations = (
    'Orchestra',	1,
    'Stage',		2,
    'Classrooms',	3,
    'VPR Studio One',	4,
    'VPR Old Studio',	5,
    'Unknown',		6,
    "St. Michael’s",    7,
    "St. Paul’s",	8,
    "Kitchen",		9,
    "TBA",		10,
    "All Souls",	11,
    "Classroom",	12,
    "Flynn Space",	13,
    "Pulcinella’s",	14,
    "UVM Alumni House", 15,
);

%mapTypes = (
    'REHEARSAL',	1,
    'DINNER',		2,
    'MEAL',		3,
    'EVENT',		4,
    'CLASS',		5,
    'CONCERT',		6,
    'RECEPTION',	7,
    'RECORDING',	8,
    'RECITAL',		9,
    'TUNING',		10,
    'PRODUCTION',	11,
);

%mapTeams = (
    'Bartok', 		3,
    'Beethoven', 	1,
    'Ludwig',		2,
    'Pierrot', 		4,
    'Schubert', 	5,
    'Schumann', 	6,
    'Shifrin', 		7,
    'Strauss', 		8,
    'Kafka',		9,
    'Tower',		10,
    'Bach',		11,
    'Alex',		12,
    'Wei',		13,
    'Nick',		14,
    'VYO1',		15,
    'VYO2',		16,
    'Cowell',		17,
    '2Pianos',		18,
    'Allan',		19,
    'Bella',		20,
    'Berio',		21,
    'David',		22,
    'Ed',		23,
    'Gloria',		24,
    'Haydn',		25,
    'Jay',		26,
    'Mendelssohn',	27,
    'Ravel',		28,
    'Sounding',		29,
    'Blue',		30,
);

if ( $opt_t ) {
    print join("\t", "TABLE", "locations", "\n");
    print join("\t", "id", "name", "nickname", "\n");
    foreach $i (sort(keys %mapLocations)) {
	print join("\t", "LOCATION", $mapLocations{$i}, $i, $i), "\n";
    }

    print join("\t", "TABLE", "teams", "\n");
    print join("\t", "id", "nickname", "\n");
    foreach $i (sort(keys %mapTeams)) {
	print join("\t", "TEAM", $mapTeams{$i}, $i), "\n";
    }

    print join("\t", "TABLE", "types", "\n");
    print join("\t", "id", "nickname", "\n");
    foreach $i (sort(keys %mapTypes)) {
	print join("\t", "TYPE", $mapTypes{$i}, $i, $i), "\n";
    }
    exit;
}

if ( $opt_h ) {
    #
    # deal with column names
    #
    $line = <>;
    chop($line);
    print join("^", $line, "\n") if $debug;
    @columnNames = split(/\^/, $line);
    Clean(@columnNames);
    if ( $opt_e ) {
	print join("\t", "event_id", "team_id", "\n");
    }
    else {
	print join("\t", "id", @columnNames[0..4,6], "\n");
    }
}

$event = 1;

while ( <> ) {
    chop;
    #print join("^", $_, "\n") if $debug;

    next if /^$/;

    ($type, $start, $end, $title, $location, $team, $notes) = split(/\^/);
    Clean($type, $start, $end, $title, $location, $team, $notes);
    print join("	", "MISSING TEAM", $team), "\n" if (not $mapTeams{$team}) && $team;
    print join("	", "MISSING TYPE", $type), "\n" if (not $mapTypes{$type}) && $type;
    print join("	", "MISSING LOCATION", $location), "\n" if (not $mapLocations{$location}) && $location;
    if ( $opt_e ) {
	print join("\t", $event, $mapTeams{$team}), "\n" if $team;
    }
    else {
	print join("\t", $event, $mapTypes{$type}, $start, $end, $title, $mapLocations{$location}, $notes), "\n";
    }
    $event++;
}


