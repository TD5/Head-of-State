"Head of State" by Tom Davies

The story description is "The new Head of State for our great nation attempts to cling on to power, but it's slowly slipping through his fingers." 

Include Hybrid Choices by AW Freyr.
Include Basic Help Menu by Emily Short.
Include Basic Screen Effects by Emily Short.

Release along with an interpreter, cover art and a "LudumDare" website.

When play begins, say "------

TODAY'S NEWSPAPER FRONT PAGE

A Surprising New Leader

In a shocking last minute swing, the country voted for a candidate who, only days ago, looked to be almost totally unelectable. The candidate only recently entered politics and has now led a fringe party to power. A party which has never previously garnered more than a few percent of the vote.

Politics isn't what it once was. These are volatile times and the people are eager for a leader who can change things. It's not clear what the voters want - it's not even clear that *they* know what they want - but it's clear the status quo is not it.

Thanks to his landslide victory, the new Head of State currently has a political power of [current political power]/[maximum political power] stars, according to our new rating. Be sure to follow this number throughout his sure-to-be 'exciting' tenure!

------




You stand looking out of the window.

So here we are. You are the new Head of State who has had a meteoric rise to the highest office in the land, but the will of the people is a fickle thing, and you are no run-of-the-mill politican. Scandals are popping up left, right and centre; your staff are leaking damaging comments; the established parties hate you; the media is lapping it up.

You're going to have to work hard if you want to stay in power: It's already beginning to slip through your fingers..."

Instead of examining the player: 
    say "A droopy face, too much makeup, a bit on the heavy side. Not that you are willing to acknowledge any of the negatives. You're important. You've always been important. If someone disagrees with you they must be wrong - and your expression makes that clear."

The maximum political power is a number that varies. The maximum political power is 5.
The minimum political power is a number that varies. The minimum political power is 5.
The current political power is a number that varies. The current political power is 5.

A game state is a kind of value. The game states are WaitingForIntroduction, WaitingForBillSigning and HandlingBriberyScandal. It is usually WaitingForIntroduction.

When play begins:
     choose row 1 in Table of Basic Help Options;
     now description entry is "This is a text-based game created for LudumDare 39, 'Running out of Power'.

The goal is to keep your grip on power as various damaging scenarios play out during your tenure as Head of State."

The current_game_state is a game state that varies. The current_game_state is initially WaitingForIntroduction.

After looking for the first time:
     now the left hand status line is "Political power: [current political power]/[maximum political power] stars".

Every turn:
     now the left hand status line is "Political power: [current political power]/[maximum political power] stars".

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Understand "speak to [someone]" as talking to.
Report talking to: say "You have nothing to say.".

Signing is an action applying to one visible thing.
Understand "sign [something]" as signing.
Report signing: say "That would just be graffiti.".

Understand the command "destroy" as something new.
Destroying is an action applying to one visible thing.
Understand "destroy [something]" as destroying.
Understand "get rid of [something]" as destroying.
Understand "rip up [something]" as destroying.
Understand "rip [something]" as destroying.
Understand "shred [something]" as destroying.
Report destroying: say "I'm not sure that will help.".

Signedness is a kind of value. The signednesses are signed and unsigned.

Section - The Official Office

The Official Office is a room. "Your office probably doesn't look much different now to how it did when each of your predecessors occupied it over the last century.

Portraits of stern old white men hang on the walls, a huge chandelier hangs down from the ceiling the the middle of the room. A huge dark wooden desk sits in front of your chair.

The things some men have done to make it to this room..."

[TODO Add short-form room description]

Instead of smelling the official office, say "The scent of tobacco smoke and brandy lingers in the room."

A window is scenery in the official office. It is fixed in place. Description is "The huge bay window provides a view of the lawn at the front of the building. The glass is immaculate. These windows are cleaned whenever the room isn't occupied."

The desk is scenery in the official office. Description is "Heavy and ancient. Clearly well used, but in fantastic condition nonetheless." Instead of taking the desk: say "The desk is far too heavy."

The lawn is scenery in the official office. Description is "Green and luscious. The riff-raff are behind the fence on the otherside of this." Instead of taking the desk: say "That's stupid."

The chandelier is scenery in the official office. Description is "The chandelier hangs above your head. The golden finish is exquisite." Instead of taking the chandelier: say "You can't reach that."

The ceiling is scenery in the official office. Description is "The ceiling is ornately detailed with a scene depicting cherubs playing in an orchard."

The portraits are scenery in the official office. Description is "These are the people who led this country since its foundation over one hundred years ago. I'm better and smarter than them." Understand "portrait" as the portraits. Understand "painting" as the portraits. Understand "paintings" as the portraits. Understand "pictures" as the portraits.

The chair of the head of state is scenery in the official office. Description is "Your chair of the Head of State isn't too far from looking like a throne. When you picked your furniture it was important that your choice sent a message, and your message was a clear one of power, wealth and ruthlessness."

The healthcare bill is carried by Martin Gavell. Description is "A bill that needs your approval if it is to survive. Something about additional funding for healthcare of the most needy citizens of this great country.

A space has been left for your signature below the body of the document.". The bill has a signedness called the state. The signedness of the bill is initially unsigned.

Martin Gavell is a man in the official office. "Your senior advisor, Martin Gavell, stands patiently in front of your desk.[if current_game_state is WaitingForIntroduction] It looks like he's waiting for you to speak to him.[end if][if player carries the bill]

You have possession of the healthcare bill.[end if]". Description is "Gavell is your right-hand man. He's loyal and he knows how to keep his mouth shut."
Understand "advisor" as Martin Gavell.

Section - Introduction

[TODO Add a hint to talk to Gavell after 5 turns of being in this state (have a "time spent in this state" counter)]

Instead of talking to Gavell:
	If current_game_state is WaitingForIntroduction:
		switch to cyoa at P-Introduction;
	else if player carries the bill:
		say "Gavell: 'You need to decide what to do with the healthcare bill, Sir.'";
	else:
		say "Nothing to say springs to mind."
	
P-Introduction is a page. It is a one-off.
"You nod to Gavell.

Gavell: 'Sir, the healthcare bill requires your attention.'"

P-Grunt is a page. It is for P-Introduction.
"You grunt to indicate that he can continue."
It flips to P-IntroductionGiven.
The cdesc is "Just grunt.".

P-LeaveBillOnDesk is a page. It is for P-Introduction.
"You: 'Hand it over, Gavell.'"
It flips to P-IntroductionGiven.
The cdesc is "Ask for the bill.".

P-IntroductionGiven is a page. It is flipped to by P-Grunt and P-LeaveBillOnDesk. It is an end-page.
"Gavell: 'Here you are, Sir.'

Gavell gives the bill to you.".
A page-toggle rule for P-IntroductionGiven:
	now the description of the official office is "Portraits of stern old white men hang on the walls, a huge candelier hangs down from the ceiling the the middle of the room. A huge dark wooden desk sits in front of your chair.";
	now the current_game_state is WaitingForBillSigning;
	now the player carries the healthcare bill.
	
Section - The Signing

[TODO Fix the logic below by separating out logic for signing or destroying the bill]
Instead of signing the bill:
	If current_game_state is not WaitingForIntroduction:
		If the signedness of the bill is unsigned:
			now the signedness of the bill is signed;
			remove the bill from play;
			say "After having made sure as much media attention was paid to your upcoming action as possible, you sign the bill into law.
			
			[bracket]Press any key[close bracket]
			
			";
			wait for any key;
			decrease current political power by 1;
			say "------

				TODAY'S NEWSPAPER FRONT PAGE

				Notable Healthcare Bill Passes
				
				In a surprising move, the country's new leader has passed the much debated healthcare bill. The passing of the bill has been welcomed by many opposing politicians, however there seems to be some dissatisfaction from the premier's core voter base. 

				The shaking of the foundations of the Head of State's support has taken its toll. According to our latest calculations, his political power has dipped to [current political power]/[maximum political power] stars, moreover, his latest actions have raised questions around what this man really stands for. Perhaps this recent change of heart is the beginning of something much greater. Only time will tell.

				------
				
				You look over your office once again. [description of office]";
		otherwise:
			say "Why would I do that?";
	otherwise:
		say "Why would I do that?".

P-DestroyChoice is a page. It is a one-off.
"You momentarily pause as you decide exactly what you want to do."

P-ThrowAwayBill is a page. It is for P-DestroyChoice.
"You refuse to sign the bill and tell your aide to inform the relevant people."
It flips to P-BillDestroyed.
The cdesc is "Reject the bill.".

P-DestroyBill is a page. It is for P-DestroyChoice.
"You mutter 'absolute garbage' as you rip up the bill and throw it away."
It flips to P-BillDestroyed.
The cdesc is "Destroy the bill.".

P-SpitOnBill is a page. It is for P-DestroyChoice.
It flips to P-BillDestroyedWithPrejudice.
The cdesc is "Destroy the bill with extreme prejudice.".
A page-toggle rule for P-SpitOnBill:
	say "You put your cigarette out on the bill...
	
	[bracket]Press any key[close bracket]";
	wait for any key;
	say "
	
	...then rip it up...
	
	[bracket]Press any key[close bracket]";
	wait for any key;
	say "
	
	...and spit on it.
	
	[bracket]Press any key[close bracket]
	
	";
	wait for any key;

P-BillDestroyed is a page. It is flipped to by P-ThrowAwayBill and P-DestroyBill. It is an end-page.
A page-toggle rule for P-BillDestroyed:
	now the current_game_state is HandlingBriberyScandal;
	remove the bill from play;
	say "Gavell: 'This won't go down well with the house, Sir.'

You: 'I don't care about the house'

[bracket]Press any key[close bracket]

	";
	wait for any key;
say "------

TODAY'S NEWSPAPER FRONT PAGE

Key Healthcare Bill Rejected

The Premier has decided to reject the latest healthcare reforms bill. Axing the the broadly popular bill has been seen as a show of strength and has sent waves rippling through the establishment. The new Head of State currently has a political power of [current political power]/[maximum political power] stars, according to our most recent polls and expert opinions.

------

".

P-BillDestroyedWithPrejudice is a page. It is flipped to by P-SpitOnBill. It is an end-page.
A page-toggle rule for P-BillDestroyedWithPrejudice:
	now the current_game_state is HandlingBriberyScandal;
	decrease current political power by 1;
	remove the bill from play;
	say "Gavell: 'This won't go down well with the voters, Sir.'

You: 'FUCK the voters.'

[bracket]Press any key[close bracket]

	";
	wait for any key;
say "------

TODAY'S NEWSPAPER FRONT PAGE

Premier Spits on the Everyman

Leaks from inside the the office of our new leader suggest that he may have gone as far as literally spitting on the recent healthcare bill whilst refusing to sign it in a fit of rage.

These leaks, which may yet transpire to be entirely false, have already damaged the new Head of State. According to our latest calculations, his political power has sunk to [current political power]/[maximum political power] stars, and there may be more fallout in store for him.

------

".

Instead of destroying the bill:
	if current_game_state is WaitingForBillSigning:
		switch to cyoa at P-DestroyChoice

[TODO Nudge if they've not signed it for 5 turns: "Gavell: 'Sir, will you be signing the healthcare bill?'"]

	
Section - The Bribery Scandal

[TODO]