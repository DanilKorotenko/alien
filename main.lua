-- $Name: Alien$
-- $Version:1.0.0$
-- $Author:Danil Korotenko$

game.dsc = [[Game by film story.]];

instead_version '1.6.0';

game.codepage = 'UTF-8';
game.act = function(o, b)
	return 'ERROR: "act" undefined for "'..tostring(b.nam)..'"';
end;

game.inv = 'ERROR: "inv" undefined';
game.use = 'ERROR: "use" undefined';
game.forcedsc = true;

dofile('scene1.lua');
dofile('scene2.lua');
dofile('alien.lua');

main = room {
	nam = 'Alien.',
	dsc = "(С) September 2014. Danil Korotenko (danil.korotenko@gmail.com)",
	obj = { vway("Next", "Click {there} to play.", 'HYPERSLEEP_VAULT') },
};
