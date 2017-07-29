"Head of State" by Tom Davies

Include Hybrid Choices by AW Freyr

Release along with an interpreter.
Release along with cover art.

When play begins, say "------

TODAY'S NEWSPAPER FRONT PAGE

In a shocking last minute swing, the country voted for a candidate who, only days ago, looked to be almost totally unelectable. The candidate only recently entered politics and belongs to a fringe party which has never previously garnered more than a few percent of the vote.

Politics isn't what it once was. These are volatile times and the people are eager for a leader who can change things. It's not clear what the voters want - it's not even clear that *they* know what they want - but it's clear the status quo is not it.

Thanks to his landslide victory, the new Head of State currently has a political power of [current political power]/[maximum political power] stars, according to our new rating. Be sure to follow this number throughout his sure-to-be 'exciting' tenure!

------




You stand looking out of the window.

So here we are. You are the new Head of State who has had a meteoric rise to the highest office in the land, but the will of the people is a fickle thing, and you are no run-of-the-mill politican. Scandles are popping up left, right and centre; your staff are leaking damaging comments; the established parties hate you; the media is lapping it up.

You're going to have to work hard if you want to stay in power: It's already beginning to slip through your fingers..."

Instead of examining the player: 
    say "A droopy face, too much makeup, a bit on the heavy side. Not that you are willing to acknowledge any of the negatives. You're important. You've always been important. If someone disagrees with you they must be wrong - and your expression makes that clear."

The maximum political power is a number that varies. The maximum political power is 5.
The minimum political power is a number that varies. The minimum political power is 5.
The current political power is a number that varies. The current political power is 5.

After looking for the first time:
     now the left hand status line is "Political power: [current political power]/[maximum political power] stars";

Every turn:
     now the left hand status line is "Political power: [current political power]/[maximum political power] stars";

GameState is a kind of value. The GameStates are WaitingForIntroduction, WaitingForBillSigning and HandleQuipScandle. It is usually WaitingForIntroduction.

Section - The Official Office

The Official Office is a room. "Your office probably doesn't look much different now to how it did when each of your predecessors occupied it over the last century.

Portraits of stern old white men hang on the walls, a huge candelier hangs down from the ceiling the the middle of the room. A huge dark wooden desk sits in front of your chair.

The things some men have done to make it to this room..."

Instead of smelling the official office, say "The scent of tobacco smoke and brandy lingers in the room."

A window is scenery in the official office. It is fixed in place. Description is "The huge bay window provides a view of the lawn at the front of the building. The glass is immaculate. These windows are cleaned whenever the room isn't occupied."

A desk is scenery in the official office. Description is "Heavy and ancient. Clearly well used, but in fantastic condition nonetheless." Instead of taking the desk: say "The desk is far too heavy."

The lawn is scenery in the official office. Description is "Green and luscious. The riff-raff are behind the fence on the otherside of this." Instead of taking the desk: say "That's stupid."

The chandelier is scenery in the official office. Description is "The chandelier hangs above your head. The golden finish is exquisite." Instead of taking the chandelier: say "You can't reach that."

The ceiling is scenery in the official office. Description is "The ceiling is ornately detailed with a scene depicting cherubs playing in an orchard."

The portraits are scenery in the official office. Description is "These are the people who led this country since its foundation over one hundred years ago. I'm better and smarter than them." Understand "portrait" as the portraits. Understand "painting" as the portraits. Understand "paintings" as the portraits. Understand "pictures" as the portraits.

The chair of the head of state is scenery in the official office. Description is "Your chair of the Head of State isn't too far from looking like a throne. When you picked your furniture it was important that your choice sent a message, and your message was a clear one of power, wealth and ruthlessness."

The bill is carried by Martin Gravell. Description is "It's an offical document. A bill that needs your approval if it is to survive. Something about funding for healthcare for the poorest and most needy citizens of this great country: Not something you are known for supporting."

Martin Gravell is a man in the official office. "Your senior advisor, Martin Gravell, stands patiently in front of your desk." Description is "Gravell is your right-hand man. He's loyal and he knows how to keep his mouth shut."

Talking is an action applying to one visible thing.

After examining Gravell:
	If GameState is WaitingForIntroduction:
		switch to cyoa at P-Introduction
	
P-Introduction is a page. It is a one-off.
"You nod to Gravell.

Gravell: 'Sir, the healthcare bill requires your attention'"

P-Grunt is a page.
"You grunt to indicate that he can continue."
The cdesc is "Just grunt.". It is for P-Introduction.
P-GoAhead is a page.
"You: 'Go ahead, Gravell.'"
The cdesc is "Ask him to continue.". It is for P-Introduction.
