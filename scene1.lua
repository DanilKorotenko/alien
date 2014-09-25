dofile('scene2.lua');

GALLEY = room
{
	nam = "GALLEY",
	dsc = [[----------------------------------------------------------------

        Kane plugs in a Silex.
        Lights a cigarette.
        Coughs.
        Grinds some coffee beans.
        Runs some water through.

                                 KANE
                  Rise and shine, Lambert.
              
----------------------------------------------------------------

        Pot now half-full.
        Kane watches it drip.
        Inhales the fragrance.

                                 KANE
                  Now Dallas and Ash.
                         (calls out)
                  Good morning Captain.

                                 DALLAS
                         (voice over)
                  Where's the coffee.

                                 KANE
                  Brewing.

        LAMBERT walks into the kitchen.
        Pours herself a cup.

----------------------------------------------------------------

        Kane enjoys a freshly-brewed cup.

                                 KANE
                  Ripley...

        Another moment.
        And then the sound of another lid opening.

                                 KANE
                  And if we have Parker, can
                  Brett be far behind.

        Lid opening sound.

                                 KANE
                  Right.

]],
	way = {'HYPERSLEEP_VAULT'}
}

HYPERSLEEP_VAULT = room
{
	nam = "HYPERSLEEP VAULT",
	dsc = [[----------------------------------------------------------------

        Explosion of escaping gas.
        The lid on a freezer pops open.
        Slowly, groggily, KANE sits up.
        Pale.
        Kane rubs the sleep from his eyes.
        Stands.
        Looks around.
        Stretches.
        Looks at the other freezer compartments.
        Scratches.
        Moves off.

----------------------------------------------------------------

        Another lid pops open.
        A young woman sits up.

                                 LAMBERT
                  What time is it.

                                 KANE
                         (voice over)
                  What do you care.

----------------------------------------------------------------

        Two more lids pop open.
        A pair of men sit up.
        Look at each other.

----------------------------------------------------------------

        DALLAS looks at his groggy circus.  
     
                                 DALLAS
                  One of you jokers get the cat.

        RIPLEY picks up a limp cat out of one of the compartments.

]],
	way = { 'MESS_scene2' , 'GALLEY'}
}
