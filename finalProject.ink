// variables
// fill notebook variables
VAR empty = 1
VAR 7am = 0
VAR 8am = 0
VAR 9am = 0
VAR 10am = 0
VAR 11am = 0
VAR 12pm = 0

// message variables


//time
VAR currentTime = -> 7amChoices

->morning
== morning ==
~ currentTime = -> 7amChoices
Your eyes open slowly, groggily. It must've been a long day yesterday since you still feel awful. Speaking of, you don't seem to remember anything from yesterday, or much of anything at all for that matter. Trying to look around your room you can't see much in the darkness, except for a faintly illuminated note on your bedstand.

+ [Read the note.] -> welcomeNote

== welcomeNote ==
"Hey me! I know you must feel so confused right now but ill catch you up. We have amnesia and can't remember anything after we go to sleep. The problem is we also don't know who are family or friends are so they aren't here to help. Oh also we have REALLY bad OCD and if we don't follow our daily schedule exactly bad things will happen. But as im sure you've figured out, we don't know what that is. We've left some space on the back to fill it in so we can remember. Maybe if we can make it through a full day we can meet up with someone who can help. 

+ [Flip to the back] -> notebook

== notebook ==
{empty == 1 : It's empty.}
{empty == 0 : SCHEDULE: }
{7am == 1 : 7:00am : Watch an hour of youtube shorts. (They suck but it just feels right)}
{8am == 2 : 8:00am : Get out bed. (Don't put on the slippers!!)}
{9am == 2 : 9:00am : }
{10am == 2 : 10:00am : }
{11am == 2 : 11:00am : }
{12pm == 2 : 12:00pm : }

+ [Go back] -> currentTime

== 7amChoices ==
~ currentTime = -> 7amChoices
{7am == 0: You don't have any guidance, but you know if you don't start trying something you'll never go anywhere. As you sit in bed, a few options pop into your head of what you could do next.}
{7am == 1: You know what you have to do thanks to the schedule.}

+ {7am == 0} [Get out of bed.] -> outOfBedWrong

+ [Watch Youtube shorts.] 
    ~ 7am = 1
    ~ empty = 0
    -> 8amChoices

+ {7am == 0} [Go back to bed.] -> backToBedWrong

== outOfBedWrong ==
As you try and step out of your bed a wave of anxiety rushes over you. Something is horribly wrong about what you've just done. Your breathing quickens and your head begins to spin. As you fall back in bed you know there's no way you'll be able to continue like this, and fall asleep.
+ [Let's try again.] -> morning

== backToBedWrong ==
The thought of even trying to figure this out is much too exhausting for you, it might be a good idea to just sleep and try again tommorow. Something tells you though as you close your eyes, you need to switch this up eventually.
+ [Let's try again.] -> morning

== 8amChoices ==
~ currentTime = -> 8amChoices
You open your phone and start watching some youtube shorts. They are painfully average but despite that, you still feel satisfied with your decision.
{8am == 0 : Since nothing bad happened it's probably a good idea to add this to your schedule you think as you happily write in it's first entry.}
{ - 8am == 0 : 
    ~ 8am = 1
}
{8am == 1: Once again you feel a few options roll around in your head as to what you could do next.}
{8am == 2: You know what you have to do thanks to the schedule.}

+ [Get out of bed.] 
    ~ 8am = 2
    -> 9amChoices

+ {8am == 1} [Watch Youtube shorts.] -> youtubeShortsWrong

+ {8am == 1} [Put on slippers] -> slippersWrong

== youtubeShortsWrong ==
You pull back out your phone and continue scrolling through shorts. Though this time as each short passes you feel a deep chasm in your chest opening, and a panic starts to stir. You are wasting away and can't possibly continue today. As you put your phone back and begin drifting asleep you think, 2 hours is way too much youtube shorts anyways.
+ [Let's try again.] -> morning

== slippersWrong ==
Looking around you notice a nice pair of slippers besides your bed. You first though is that surely you would hate walking around without them, so before getting out of bed I should put them on. You smile as your putting them on believing you have gamed yourself, but alas, that feeling of dread washes over you. These slippers are slightly too small, and they press on the sides of your feet. The discomfort, which was only slight, begins to amplify to an unbearable amount. You throw the slippers off and lay back in bed. How could you be so stupid you think, as your eyes become heavy, and you fall asleep once more. 
+ [Let's try again.] -> morning

== 9amChoices ==
~ currentTime = -> 9amChoices
You step out of bed, still feeling groggy, but also solid. Your feeling good and ready to really start your day.
{9am == 0 : Noticing the blank spot in your notebook you decide quickly to jot this down, it will certainly help you tommorow.}
{ - 9am == 0 : 
    ~ 9am = 1
}
{9am == 1 : A few natural sounding next steps pop into you head.}
{9am == 2: You know what you have to do thanks to the schedule.}

+ {9am == 1} [Open the blinds.] -> blindsWrong

+ {9am == 1} [Strecth your muscles.] -> stretchWrong

+ [Go take a shower.] 
    ~ 9am = 2
    -> 10amChoices

== blindsWrong ==
You strut over to the blinds and throw them open like a superstar. The light from outside hits you like a shotgun blast straight to the face, blinding you and giving you an instant migraine. Between the pain of the migraine and the onsetting panic, you know there's no chance you can finish the day, so you close the blinds, climb into bed, and go back to bed.
+ [Let's try again.] -> morning

== stretchWrong ==
Your muscles feel like you haven't strecthed them a day in your life, as if you've done almost nothing but sleep for weeks. As you get to each muscle pain rips through you like your gonna tear yourself apart. The thought of dying like that puts you into a panic and anxiety seeps into your tender muscles. It's hopeless to do anything else right now, it's best you just ease up and take a quick nap. 
+ [Let's try again.] -> morning


== 10amChoices ==
~ currentTime = -> 10amChoices
`   
{10am == 0 : t}
{ - 10am == 0 : 
    ~ 10am = 1
}
{10am == 1 : t}
{10am == 2: You know what you have to do thanks to the schedule.}

+ [test] 
    ~ 10am = 2
    -> 11amChoices

== 11amChoices ==
~ currentTime = -> 11amChoices

{11am == 0 : t}
{ - 11am == 0 : 
    ~ 11am = 1
}
{11am == 1 : t}
{11am == 2: You know what you have to do thanks to the schedule.}

+ [test] 
    ~ 11am = 2
    -> 12pmChoices

== 12pmChoices ==
~ currentTime = -> 12pmChoices

{12pm == 0 : t}
{ - 12pm == 0 : 
    ~ 12pm = 1
}
{12pm == 1 : t}
{12pm == 2: You know what you have to do thanks to the schedule.}

+ [test] 
    ~ 12pm = 2
    -> END
















=== Evening ===
You make it back home and aproach the front door. You see a sticky note stuck to the door.
+[Read the note]->DoorNote

=== DoorNote ===
You pick you the note and it reads:
"Great job making it this far, you've almost made it through the day. Make sure you take the proper steps in relaxing to prepare for the next day."
+[Enter Home]->Foyer

=== Foyer ===
You enter the foyer. The house is pitch black and silent.{WriteNote1:You feel a note on the wall.}
+[Turn the light on]->Choice1
+[Take off shoes]->Panic
+[Put keys away]->Panic
+{WriteNote1}[Check Note]->Choice1Note

=== Choice1 ===
You turn the lights on allowing you to see what you're doing while you start relaxing after your day. With the light you can place your keys into the dish by the door, and neatly place your shoes aligned with the rest.{not WriteNote1: Should probably make note of my choice.}{WriteNote2:You see a note on the wall.}
+{not WriteNote1}[Make note]->WriteNote1
+[Go to the living room and watch TV]->Panic
+[Go to the kitchen and make food]->Choice2
+[Go to bed and scroll socail media]->Panic
+{WriteNote2}[Check Note]->Choice2Note

=== WriteNote1 ===
You make the note:
"Turn on the lights first"
+[Continue]->Choice1

=== Choice1Note ===
The note reads:
"Turn on the lights first"
+[Continue]->Foyer

=== Choice2 ===
Hunger is setting in, you make your way to the kitchen to make a meal before leisure time. Question now is what should be made to eat.{not WriteNote2: Should probably make note of my choice.}{WriteNote3:You see a note on the counter.}
+{not WriteNote2}[Make note]->WriteNote2
+[Make breakfest for dinner]->Panic
+[Make a TV dinner]->Panic
+[Make a balanced stake dinner]->Choice3
+{WriteNote3}[Check Note]->Choice3Note

=== WriteNote2 ===
You make the note:
"You are hungery it would be best to start with food"
+[Continue]->Choice2

=== Choice2Note ===
The note reads:
"You are hungery it would be best to start with food"
+[Continue]->Choice1

=== Choice3 ===
You cook a nice balanced stake dinner with mashed potatoes and mixed greens. You go to your dinning room table before you enjoy your meal, some ambience would be a nice pairing.{not WriteNote3: Should probably make note of my choice.}{WriteNote4:You see a note on the table.}
+{not WriteNote3}[Make note]->WriteNote3
+[Play music to break the silence]->Panic
+[Play a show on the TV for entertainment]->Choice4
+[Light some candles on the table]->Panic
+{WriteNote4}[Check Note]->Choice4Note


=== WriteNote3 ===
You make the note:
"A nice balanced meal would be good for tonight"
+[Continue]->Choice3

=== Choice3Note ===
The note reads:
"A nice balanced meal would be good for tonight"
+[Continue]->Choice2

=== Choice4 ===
You turn the TV on to your favorite show and watch it as you enjoy your meal. You finish your meal yet the show hasn't finsihed yet.{not WriteNote4: Should probably make note of my choice.}{WriteNote5:You see another note on the counter.}
+{not WriteNote4}[Make note]->WriteNote4
+[Pause the show to clean the dishes]->Choice5
+[Sit there and watch till the show is over]->Panic
+[Do the dishes and finsih the show another day]->Panic
+{WriteNote5}[Check Note]->Choice5Note



=== WriteNote4 ===
You make the note:
"It's always nice to watch a show with dinner"
+[Continue]->Choice4

=== Choice4Note ===
The note reads:
"It's always nice to watch a show with dinner"
+[Continue]->Choice3

=== Choice5 ===
You pause your show to clean up the dishes from your meal. Once finsihed you sit down on the couch and finish the episode you were watching. You're starting to get quite tired.{not WriteNote5: Should probably make note of my choice.}{WriteNote6:You see a note on the side table.}
+{not WriteNote5}[Make note]->WriteNote5
+[Watch another episode]->Panic
+[Start playing a video game]->Panic
+[Go to the bathroom to get cleaned up before bed]->Choice6
+{WriteNote6}[Check Note]->Choice6Note


=== WriteNote5 ===
You make the note:
"Pause for now and clean, you can finish it after."
+[Continue]->Choice5

=== Choice5Note ===
The note reads:
"Pause for now and clean, you can finish it after."
+[Continue]->Choice4

=== Choice6 ===
You go to the bathroom and get cleaned up before bed; brush your teeth, wash your face, ect. What's left to do now?{not WriteNote6: Should probably make note of my choice.}{WriteNote7:You see a note on the mirror.}
+{not WriteNote6}[Make note]->WriteNote6
+[Go back and continue the show]->Panic
+[Go to bed]->Choice7
+[Grab a snack before bed]->Panic
+{WriteNote7}[Check Note]->Choice7Note


=== WriteNote6 ===
You make the note:
"Getting pretty late, would be best to get cleaned up."
+[Continue]->Choice6

=== Choice6Note ===
The note reads:
"Getting pretty late, would be best to get cleaned up."
+[Continue]->Choice5

=== Choice7 ===
You get into bed, ready to sleep.{not WriteNote1: Should probably make one last note of my choice.}
+{not WriteNote7}[Make note]->WriteNote7
+[Go to sleep]->Sleep


=== WriteNote7 ===
You make the note:
"Best to just sleep, get some good rest for the next day"
+[Continue]->Choice7
-> END

=== Choice7Note ===
The note reads:
"Best to just sleep, get some good rest for the next day"
+[Continue]->Choice6

=== Sleep ===
You finally managed to make it through a whole day without panicing. You sleep soundly hoping that your notes will be able to guide you through the next day.
-> END






=== Panic ===
You feel a sense of dread, the order wasn't perfect. You begin to panic and your breathing starts to pick up. You sprint into bed and sleep. Hopefully tomorrow will be better.
+[Start the day over]->morning














->END
