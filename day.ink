VAR d = ""
VAR c = 0

-> Outside

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
+ [Go home and sleep, today's not your day] -> Outside
