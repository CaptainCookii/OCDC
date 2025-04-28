// variables
// fill notebook variables
VAR empty = 1
VAR 7am = 0
VAR 8am = 0
VAR 9am = 0
VAR 10am = 0
VAR 11am = 0
VAR 12pm = 0

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
{7am == 1 : 7:00am : Watch an hour of youtube shorts. (They all suck but for some reason it just feels right)}
{8am == 2 : 8:00am : Get out bed. (Don't put on the slippers!!)}
{9am == 2 : 9:00am : Take a shower. (Your muscles feel like they need strecthed but the shower will fix it, trust)}
{10am == 2 : 10:00am : Dress up in your summer clothes! (Yes it's summer and we're going to look STUNNING)}
{11am == 2 : 11:00am : Make some breakfast. (Nutrition is important, no we aren't fat, yes we need to eat breakfast everyday deal with it!)}
{12pm == 2 : 12:00pm : Leave the house. (I know it's scary since you don't know what's out there but the oustside calls to us.) }

+ [Go back] -> currentTime

== 7amChoices ==
~ currentTime = -> 7amChoices
{7am == 0: You don't have any guidance, but you know if you don't start trying something you'll never go anywhere. As you sit in bed, a few options pop into your head of what you could do next.}
{7am == 1: You know what you have to do thanks to the schedule.}

+ [Get out of bed.] -> outOfBedWrong

+ [Watch Youtube shorts.] 
    ~ 7am = 1
    ~ empty = 0
    -> 8amChoices

+ [Go back to bed.] -> backToBedWrong

+ [Check your notebook] -> notebook

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

+ [Watch Youtube shorts.] -> youtubeShortsWrong

+ [Put on slippers] -> slippersWrong

+ [Check your notebook] -> notebook

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

+ [Open the blinds.] -> blindsWrong

+ [Strecth your muscles.] -> stretchWrong

+ [Go take a shower.] 
    ~ 9am = 2
    -> 10amChoices

+ [Check your notebook] -> notebook

== blindsWrong ==
You strut over to the blinds and throw them open like a superstar. The light from outside hits you like a shotgun blast straight to the face, blinding you and giving you an instant migraine. Between the pain of the migraine and the onsetting panic, you know there's no chance you can finish the day, so you close the blinds, climb into bed, and go back to bed.
+ [Let's try again.] -> morning

== stretchWrong ==
Your muscles feel like you haven't strecthed them a day in your life, as if you've done almost nothing but sleep for weeks. As you get to each muscle pain rips through you like your gonna tear yourself apart. The thought of dying like that puts you into a panic and anxiety seeps into your tender muscles. It's hopeless to do anything else right now, it's best you just ease up and take a quick nap. 
+ [Let's try again.] -> morning


== 10amChoices ==
~ currentTime = -> 10amChoices
The shower is the most refreshing thing you've ever felt. The temperature is perfect and when you step out you feel cleaner than a surgical room before a surgery.    
{10am == 0 : You quickly grab your note pad and write it down, satisfied with your shower.}
{ - 10am == 0 : 
    ~ 10am = 1
}
{10am == 1 : From here there feel's like there is a lot more you could do, it might be tough to narrow down but your feeling motivated to try.}
{10am == 2: You know what you have to do thanks to the schedule.}

+ [Dress in winter clothes] -> winterWrong

+ [Dress in fall clothes.] -> fallWrong

+ [Dress in summer clothes.] 
    ~ 10am = 2
    -> 11amChoices

+ [Dress in spring clothes.] ->springWrong

+ [Leave your room.] -> nakedWrong

+ [Brush your teeth.] -> teethWrong

+ [Check your notebook] -> notebook

== winterWrong ==
It takes a while to dig through all your clothes and find your winter clothing. As you put it on you start to feel really hot, as if hell has opened up around you. These clothes ARE NOT in season and the heat is making you feel light headed. Embarressed and sweating you crawl into bed, ready to sleep off the shame.
+ [Let's try again.] -> morning

== fallWrong ==
It doesn't take very long to put together this outfit but something immediately feels off. Something about the pants maybe or the jacket just isn't vibing with you and it's making you angry. You try 3 more combos and none of them are good enough. Frustrated and embarressed you trudge back to bed, knowing your fasion is less than slaying, and go to bed.
+ [Let's try again.] -> morning

== springWrong ==
It doesn't take very long to put together this outfit but something immediately feels off. Something about the shorts maybe or the top just isn't vibing with you and it's making you angry. You try several more combos and all of them are equally disappointing. Frustrated and embarressed you trudge back to bed, knowing your fasion is less than slaying, and go to bed.
+ [Let's try again.] -> morning

== nakedWrong ==
As you step out your room you feel so much shame. Naked? Really? You can't possibly leave your room like this, and you go back to bed wondering what you were even thinking.
+ [Let's try again.] -> morning

== teethWrong ==
Hygiene is important you say to yourself as you put toothpaste on the brush and start brushing your teeth. But as you brush your hand movements are rigid and aggressive, leading you to scrape up your gums and cause some bleeding. You break into tears at the sight of your own blood. You rush to bed and cry yourself to sleep. Congrats you ruined your smile.
+ [Let's try again.] -> morning

== 11amChoices ==
~ currentTime = -> 11amChoices
You open your closet and run your hands along your shirts. As if god himself was calling down to you, you are able to pick piece after piece that brilliantly compliment each other. The fit is fire and you are beyond proud of it. 
{11am == 0 : As you're used to by now, you pick up your notebook and jot down your success.}
{ - 11am == 0 : 
    ~ 11am = 1
}
{11am == 1 : This morning has been going great, but you know you still have plenty left to do, so as you start scanning the area a new set of options organize themselves in your head.}
{11am == 2: You know what you have to do thanks to the schedule.}

+ [Make breakfast.] 
    ~ 11am = 2
    -> 12pmChoices
    
+ [Watch youtube shorts.] -> youtubeShortsWrong

+ [Open the blinds.] ->blindsWrong

+ [Brush your teeth.] -> teethWrong

+ [Leave the house.] -> leaveWrong

+ [Change your clothes.] -> clothesWrong

+ [Check your notebook] -> notebook

== leaveWrong ==
You walk up to the door and place your hand on the handle. A sudden terror rips through you like a rabid dog. You have no idea what's waiting for you out there. As far as your aware you've never left this house, and maybe it's better you don't with your condition and all. You walk back to your room and shut yourself in, ready to sleep off this horryfying realization.
+ [Let's try again.] -> morning

== clothesWrong ==
You think maybe it's a good idea to try something else to wear, maybe you can do better. After almost 15 minutes though of looking you realize it's a waste of time which makes you annoyed. Why didn't you just have confidence the first time. With all that wasted time there's no way the rest of this day could go well, so you just opt to go to bed instead.
+ [Let's try again.] -> morning

== 12pmChoices ==
~ currentTime = -> 12pmChoices
You step into the kitchen and there's everything you need for the perfect breakfast, a pack of pop tarts and a toaster. As you sink your teeth into your toasted strawberry pop tart you feel bliss. Yes this is what good breakfast is for.
{12pm == 0 : You write yourself another note in the notebook, it would be a shame to miss this tommorow.}
{ - 12pm == 0 : 
    ~ 12pm = 1
}
{12pm == 1 : Okay your already on a roll, let's keep it going. Looking around you know this choice is going to be tough.}
{12pm == 2: You know what you have to do thanks to the schedule.}

+ [Brush your teeth.] -> teethWrong

+ [Clean up the kitchen.] -> cleanWrong

+ [Snuggle with your cat.] -> catWrong

+ [Listen to music.] -> musicWrong

+ [Leave the house.] 
    ~ 12pm = 2
    -> Outside
   
+ [Watch TV.] ->tvWrong

+ [Check your notebook] -> notebook

== cleanWrong ==
You attempt to clean up your messy kitchen but there is way too much. Dishes seem to stretch to the ceiling and grim is caked on so thick it takes multiple wipes to get it off. You felt like you get a good start but you can't stomach any more of it. You put aside your cleaning supplies and march back to your room, disgusted with yourself for living in this filth at all. As you get in bed you fall asleep quickly hoping to forget this nonsense.
+ [Let's try again.] -> morning

== catWrong ==
You search here there and everywhere, but can't seem to find a cat. Come to think of it, there's no evidence you even own a cat, no cat toys, no cat tree, no cat food, why did you even think of this? You feel so moronic, and go off to bed so you can escape this stupidity.
+ [Let's try again.] -> morning

== musicWrong ==
You open Spotify and there is hundreds of playlists saved on your phone. The options are simply overwhelming and you have no idea what your even in the mood for. You start to panic thinking you can't even make such a simple descision and spiral deeply out of control. Without even realizing it you end up back in bed and quickly fall asleep.
+ [Let's try again.] -> morning

== tvWrong ==
You flick on the TV. The news is playing and apparently there's a manhunt going on for a woman who's been missing for weeks. They look vaguely familiar and this terrifies you, what if you went missing? You start to feel that familiar twang in your chest of anxiety setting in and know the drill. Off to bed so you can calm down and hopefully wake up again well tommorow.
+ [Let's try again.] -> morning

VAR d = ""
VAR c = 0

== StickyNote ==
{ c == 0:
 The sticky note is empty
 -> Outside
}
{d}
{ c == 1:
+ [Continue] -> Driving
}
{ c == 2:
+ [Continue] -> Road
}


== Outside ==
You step outside. There's a sticky note, written by you, on the other side of the door.
+ [Check the Sticky Note] You check the sticky note:
-> StickyNote
+ [Drive to work] Who cares about the environment, you need to be on time.
{ c < 1:
     ~ c+= 1
     ~ d += "Take the car"
}
-> Driving
+ [Bike to work] Obviously the bicycle, conscious and efficient. 
-> Bike
+ [Walk to work] Why not, nice enough day outside. -> Walk
= Walk
You walk for a couple blocks before checking your watch,
it's been far too long, you'll never make it to work in time
+ [Give up and walk back home] -> Outside
= Bike
It's so nice outside, no wonder you bike to work.
Your ride takes you through a rough neighborhood, it might not be the safest but it'll be the fastest way through.
+ [Go through the neighborhood] You peddle down a shabby looking street.
A group stops you, strips you of your bike, and gives you a worn down bike.
-> Reset
+ [Go the long way]
You take the long way around, by the time you reach your office it's far too late.
Imagine how embarrassing it would be to walk in now.
-> Reset

== Driving ==
You sit down in the drivers seat, what should you do first
+ [Start the car] You start the car to that irritating seatbelt noise
Why would you do this
-> Reset
+ [Buckle your seatbelt] Safety first
{ c < 2:
     ~ c+= 1
     ~ d += ", buckle up"
}
-> Car
+ [Adjust your mirrors] Your mirrors are perfect, as expected.
Or wait
Are they?
You spend an hour making slight adjustments to your mirrors
-> Reset

= Car
Now that your seatbelt is on, what's next?
+ [Never too late to doomscroll] Yes it is
2 minutes becomes 2 hours and now you're late
-> Reset
+ [Start your engine and pull out] Finally, time to leave the house
-> Road

== Road ==
Out on the road now, how fast do you drive?
+ [Fast. Very Fast.] You speed down the highway
-> Intersection_f
+ [Speed limit] You drive the speed limit
-> Intersection_m
+ [Slow and careful] You start your drive carefully
You slowly move past a green light, so slow that the light turns red before you make it through. A blue truck speeds past and scrapes the back of your car. Now you have to go fix it.
-> Reset

= Intersection_m
You arrive at a red light, a blue truck speeds past but there's no other cars in sight. Do you run the light?
+ [Yes] Nobody was there to see you, and you arrive at work in time.
{ c < 3:
     ~ c+= 1
     ~ d += ", drive the speed limit and run the red light"
}
-> Street
+ [No] You followed the speed limit and traffic laws and now you're stuck in awful traffic.
Traffic causes too much stress, you should go home before you pass out
-> Reset

= Intersection_f
You quickly approach a yellow light, you can either stop or just run through it.
+ [Stop] You're going too fast, you come to a stop right before a blue truck speeds across.
The stress of the situation is too much
-> Reset
+ [Speed through]
You speed through the light and are clipped by a blue truck.
You exchange insurance information but this man is so wealthy he buys you a brand new car.
It all ended well but today has just been too stressful
-> Reset

== Street ==
After parking you walk out into the street. You do know where your job is, right?
+ [The bank] You walk into the bank
-> Bank
+ [The tall building with all the offices in it] You walk into the bulding with all the offices
Your boss is in the lobby and asks you to follow him into a meeting that's about to begin.
{ c < 4:
     ~ c+= 1
     ~ d += ", you work at the office building"
}
-> Job
+ [The gas station] You walk up to the gas station, this place has been closed for a long time. Plus it was a mile walk from the parking lot.
-> Reset
= Bank
You walk into the bank, confident as ever.
You wave to the receptionist as you walk to the elevator.
+ [Enter the elevator] You step into the elevator
-> Elevator
= Elevator
The elevator quickly fills up, you're drawn to the floor 4 button
+ [Hit the 4 button] You hit the button for floor 4
-> Floor4
= Floor4
Floor 4 hosts a sea of cubicles, you walk over to your cubicle and sit down
+ [Start working] You turn on the computer and begin to work
A man walks over to you and asks who you are and what you're doing in your cubicle
Embarrassed, you apologize and walk out
-> Reset

== Job ==
During the meeting your supervisor asks you what you've been doing lately, how do you respond?
+ [Making spreadsheets] You're informed this isn't part of your job, what have you been doing?
-> Reset
+ [Making presentations] That's great, you're asked if you can pull up your latest presentation.
You open up your laptop and find that it contains no presentations
You make up an excuse and leave the conference room
-> Reset
+ [Talking to clients] Everyone nods their heads and goes along with it, you're so professional
{ c < 5:
     ~ c+= 1
     ~ d += " and your job involves speaking to clients"
}
-> Car2

== Car2 ==
You make it through the work day and now you're back in your car. You know what to do from here, right?
+ [Start the car] That seatbelt noise is awful.
It stresses you out so much you almost crash on your way home, making you even more stressed
-> Reset
+ [Buckle your seatbelt] Safety first!
You become so bored behind the wheel after having no enrichment time for hours.
You almost fall asleep behind the wheel which stresses you out.
-> Reset

+ [Scroll on your phone] Finally, you are now entertained enough to drive home.
{ c < 6:
     ~ c+= 1
     ~ d += ", and don't drive home bored."
}
-> DayToEve

== DayToEve ==
You've made it through work for the day, time to drive home.
-> Evening

== Reset ==
<>
+ [Go home and sleep, today's not your day] -> morning

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
+[Make a balanced steak dinner]->Choice3
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
+[Start the day over.] ->morning

->END






























->END