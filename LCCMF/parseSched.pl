#!/usr/bin/perl

require 'Clean';

use Getopt::Std;
$ret = getopts('deht');
if (!$ret) {
    print STDERR "Usage: $0 [-deht]...\n";
    print STDERR "      -d  debug\n";
    print STDERR "      -e  event team table\n";
    print STDERR "      -h  expect column names\n";
    print STDERR "      -t  dump tables\n";
    exit 1;
}
$debug = $opt_d;
$tableName = "Table";
$tableName = $opt_t if $opt_t;


%mapLocations = (
    'Orchestra',	1,
    'Stage',		2,
    'Classrooms',	3,
    'VPR New Studio',	4,
    'VPR Old Studio',	5,
    'Unknown',		6,
    "St. Michael’s",    7,
    "St. Paul’s",	8,
    "Kitchen",		9,
    "TBA",		10,
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
);

if ( $opt_t ) {
    print join("\t", "TABLE", "locations", "\n");
    print join("\t", "id", "name", "nickname", "\n");
    foreach $i (sort(keys %mapLocations)) {
	print join("\t", $mapLocations{$i}, $i, $i), "\n";
    }

    print join("\t", "TABLE", "teams", "\n");
    print join("\t", "id", "nickname", "\n");
    foreach $i (sort(keys %mapTeams)) {
	print join("\t", $mapTeams{$i}, $i), "\n";
    }

    print join("\t", "TABLE", "types", "\n");
    print join("\t", "id", "nickname", "\n");
    foreach $i (sort(keys %mapTypes)) {
	print join("\t", $mapTypes{$i}, $i), "\n";
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


