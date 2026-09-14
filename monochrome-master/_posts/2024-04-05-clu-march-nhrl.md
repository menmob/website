---
title: Building My First Combat Robot (And Watching It Die)
description: I took my beetleweight combat robot, Clu, to NHRL's March 2024 event.
header: Building My First Combat Robot (And Watching It Die)
---

When I first was a kid, I thought building a Battlebot sounded like the coolest thing ever. But, being a kid, it never went past me drawing some ideas for bots. 

However, once I got to college, I learned that WPI had one of the best combat robotics teams in the world. So, naturally, I started working. I learned CAD by just messing around with Solidworks and consulting the internet when I got stuck, and eventually, I figured it out good enough to build a real robot. So, I built Clu. Named after the antagonistic program that takes over the (virtual) world in Tron: Legacy, Clu was built from the ground up to serve as a platform for testing a (future) fully autonomous drive system. I don't currently have a lot to say about the fully autonomous software systems, but I have been working on it in the background throughout this project, so I will certainly write about it in the future.

Clu uses a kiwi-drive drivetrain, which means that it uses three omni-wheels spaced 120 degrees apart from eachother. This allows Clu to strafe in any direction regardless of orientation. This is advantageous in combat robotics because the vast majority of bots use standard tank-drive configurations with either 2 or 4 wheels. This means they can only move forward, backward, or rotate. Clu is incredibly mobile in comparison with its kiwi-drive configuration. For example, this allows Clu to keep it's weapon pointed towards an opponent while it strafes in a circle around them. This is very helpful because at the 3lb weight class, robots are typically much less armoured on the sides and back, and Clu is no exception. So being able to *always* keep its weapon pointed towards the opponent is a massive advantage.

In combat robotics, there are generally two types of kinetic spinner robots: vertical or horizontal. I won't get into many details of each in this post, but I chose a vertical spinner because they are generally simpler, require less complicated manufacturing, and tend to be more stable when making contact with an opponent (which is important for autonomous control).

So, with the design specifications out of the way, I started CADing. I designed 3 full revisions of Clu before I felt I had a bot that was actually worth building. This was mainly because Clu was my first 3lb bot, and was also a more complex type of bot in general (kiwi-drive). I think it's neat to see the progression of the designs eventually reaching something that looks good and could *possibly* function well. If I had to estimate, I probably spent ~120 hours in CAD for the final revision that I ended up building, and ~250 hours for all three revisions.

![Clu's CAD in Solidworks](/static/clu_cad.png){: width="500" }
*Clu's (Nearly) Final Design*



It's somewhat easy to design a bot. But what does it take to manufacture and build one? I had never done any machining or complex mechanical assembly before this project, so I had a lot to learn. But luckily the 3lb weight class is very accessible, as a good chunk of the material in the bot can be 3D printed out of a rubbery plastic called TPU. TPU is absurdly impact absorbent and has very good layer adhesion, making it a much better candidate for combat robotics than PLA or PETG, which would both shatter basically immediately against a metal spinner. TPU is easy enough to print on any modern 3D printer, and my Bambu Labs A1 Mini does a great job with it.

![An entirely full build plate of bot parts](/static/clu_3dp_full_bed.png){: width="500" }
*Filling My Build Plate With TPU Parts*



Bots do still need some rigidity though, so I had a few aluminum and carbon fiber parts. 2D aluminum and carbon fiber plate manufacturing are absurdly cheap if you go with the right vendor, and in this case, I used SendCutSend for the aluminum and CNCMadness for the carbon fiber plates. CNCMadness is especially cheap, with prices commonly being below what it would cost you to buy the stock yourself. Carbon fiber is also very nasty to cut (inhaling carbon fiber dust will eventually cause silicosis..), so even if I had the experience or machines to do so, I would still probably outsource it. 

So, where do you actually fight these bots? As a kid, I kind of assumed that the only combat robotics events were the ones hosted on the TV show. But boy, was I wrong. There are many regional competitions for smaller weight classes, and the undeniable king of these events is NHRL. NHRL is a combat robotics league hosted in Norwalk, Connecticut, and is funded by a billionaire entrepeneur. They have a huge warehouse that they run events in every 6-8 weeks, and that pace makes these events insanely competitive, as it allows competitors to quickly iterate on their designs. NHRL has announcers, camerapeople, amd a dedicated production team running insanely high quality live broadcasts throughout the day. That is to say, NHRL is *awesome* to compete at, and it's not even a 3 hour drive from WPI! 

So, once I had a good idea of my timeline on finishing Clu, I signed up for the March 2024 NHRL event. Inevitably, I cut it really close, but I was able to get Clu assembled a day or two before the event. The day of the event comes, and I wake up at 4am in order to be there when the doors open. 

![Clu on a scale with electronics piled on top, scale reads 2.983lb](/static/clu_scale_electronics_external.png){: width="500" }
*Clu, Mildly Assembled, Just Barely Within Weight*



I'll spoil a bit now: the event didn't go particularly well. I had a lot of fun, but between stupid mistakes and poor design decisions, Clu didn't win a single fight by merit. This was mainly due to the fact that I did not have a way to reliably flip my bot over when it ended up on its head. I had hoped the spinning weapon could grab at the floor and randomly flip me over, but the belt between my motor and weapon assembly was not tight enough to provide enough torque to do this. Without a self righter, I was a fish out of water the second I was flipped over.


I was winning my first fight for about 10 seconds by dissabling one of my opponents drive motors. I then went for a killing blow, and of course, flipped myself over. My opponent was barely mobile, but still moving. I, however, was basically unable to move, so I was quickly counted out. This was definitely an unlucky fight, but I learned I needed to hold back sometimes instead of engaging unnecessarily and risking getting flipped over. 

(Article is WIP)