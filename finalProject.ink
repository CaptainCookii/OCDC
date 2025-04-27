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































->END