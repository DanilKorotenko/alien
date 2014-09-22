#!/usr/bin/perl

open(screenplayFile, "<alienScreenPlay.txt") || die "Cannot open file.";

@allLines = <screenplayFile>;

close(screenplayFile);

$previousRoom = "";

$currentLines = "";

%rooms = ();

@roomIDList = ();

foreach $line (@allLines)
{
	if ($line =~ /\s*(INT|EXT)\.\s(.+)/)
	{
		$roomName = $2;
		$roomID = $roomName;
		$roomID =~ s/(\s+|\")/_/g;
		$roomID =~ s/-/_/g;
		$roomID =~ s/__/_/g;
		push @roomIDList, $roomID;
		chomp($roomName);
		if($previousRoom ne $roomName)
		{
			$rooms{$roomName} .= "----------------------------------------------------------------\n";
			$rooms{$roomName} .= $currentLines;
			$previousRoom = $roomName;
			$currentLines = "";
		}
	}
	else
	{
		$currentLines .= $line;
	}
	
}

$roomIDSString = "";

foreach $roomID (@roomIDList)
{
	$roomIDSString .= "'$roomID' , "
}

chop $roomIDSString;
chop $roomIDSString;

foreach $roomName (keys %rooms)
{
	$roomID = $roomName;
	$roomID =~ s/(\s+|\")/_/g;
	$roomID =~ s/-/_/g;
	$roomID =~ s/__/_/g;
	print "$roomID = room\n{\n\tnam = \"$roomName\",\n\tdsc = \"[[^^$rooms{$roomName}]]\"\n\tway = {$roomIDSString}}\n\n";
}

#print $roomIDSString;

print "\n";