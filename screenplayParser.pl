#!/usr/bin/perl

open(screenplayFile, "<alienScreenPlay.txt") || die "Cannot open file.";

@allLines = <screenplayFile>;

close(screenplayFile);

$previousRoom = "intro";

$currentLines = "";

%rooms = ();

foreach $line (@allLines)
{
	if ($line =~ /\s*(INT|EXT)\.\s(.+)/)
	{
		$roomName = $2;
		chomp($roomName);
		$roomName =~ s/\"/\'/g;
			if ($previousRoom ne $roomName)
			{
				$rooms{$previousRoom} .= "----------------------------------------------------------------\n";
				$rooms{$previousRoom} .= $currentLines;
				$previousRoom = $roomName;
				$currentLines = "";
			}
	}
	else
	{
		$currentLines .= "^";
		$currentLines .= $line;
	}
	
}

$roomIDSString = "";

foreach $roomName (keys %rooms)
{
	$roomID = $roomName;
	$roomID =~ s/(\s+|\")/_/g;
	$roomID =~ s/-/_/g;
	$roomID =~ s/\'/_/g;
	$roomID =~ s/__/_/g;
	$roomIDSString .= "'$roomID' , \n"
}

chop $roomIDSString;
chop $roomIDSString;
chop $roomIDSString;

foreach $roomName (keys %rooms)
{
	$roomID = $roomName;
	$roomID =~ s/(\s+|\")/_/g;
	$roomID =~ s/-/_/g;
	$roomID =~ s/\'/_/g;
	$roomID =~ s/__/_/g;
	print "$roomID = room\n{\n\tnam = \"$roomName\",\n\tdsc = [[$rooms{$roomName}]],\n\tway = {$roomIDSString}\n}\n\n";
}

print "\n";