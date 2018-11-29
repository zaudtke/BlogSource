---
title: Presentations
heroheader: Presentations
date: 2017-08-29 13:34:14
herourl: hero.jpg
herosubheader: ...that I have given
---

#### Online Interviews
[Channel 9](https://channel9.msdn.com/events/Seth-on-the-Road/That-Conference-2015/T030) - Understanding Message Queues
[MS Dev Show](http://msdevshow.com/2017/08/that-conference-2017-part-1/) - KISS Talk (Around the 50 minute mark)

---

#### IOT IN AZURE - A JOURNEY TO PRODUCTION
Microsoft Azure offers a lot of services for building cloud solutions.  So many in fact, that choosing the right tool for the job at times can be difficult.  Other times, the selected service may seem right at first, but turns out to not work once you dig in a little further.  So many online demos are overly simplified, this project was anything but.

In this session you'll see:
* Where we started and why we needed/wanted Azure
* PaaS offerings selected and rejected and why
* Difficulties we encountered and how we resolved them
* Future thoughts on things implemented, or yet to come

Although this particular solution is IoT, there are only a couple of services selected that are specific to IoT.  So, other than those couple of services, the rest of discussion could apply to anything you wanted to put in the Cloud.

[Knox .NET](https://www.meetup.com/Knox-NET/) July 9, 2018
[That Conference](https://www.thatconference.com) August 7, 2018
[DevSpace](https://www.devspaceconf.com/) Ocober 13, 2018

#### KISS The Forgotten Acryonym
We all know that KISS stands for Keep It Simple, Stupid.  Somewhere along the line I think this acronym has become the forgotten acronym of development.

It's time to Go File New… and everyone is excited, because new projects are way more fun than maintenance projects.  You get to try new languages, new patterns, new workflows, and more.  We start throwing around terms like DDD, CQRS, ES, DRY, SOLID, and more.  We start thinking about NoSQL, Entity Framework, Repositories, APIs, and more.  We start fighting and deciding on which packages and libraries are going to help us out and make this the best application ever.

We're building the application now.  We used a package from the internet to help us implement the repository pattern.  A new version of our development environment is released, so we try to use it.  Open up the project in new environment and BAM.  Compiler errors everywhere.  What?  Why?  How?  Now we spend some time spelunking this really weird error you've never heard of, and Google isn't much help.  Finally, you find it.  That package you decided you use, has something in it, that ties it directly to the now previous version of the development IDE.  Now what?  Did we really need that package?  See Also: left-pad issue of NPM.

Ok, we got beyond that, now we're cruising.  Hmm, this requirement is a bit weird.  In the past I would have used this to solve it.  Yeah that should still work.  But wait, someone comes along and states, "that's the OLD way of doing it.  We need to use this new fancy way of doing it."  There ends up being way more code written just to avoid "the old way".  To top it off, it works, but the performance is bad, and it isn't very readable.

Now we start hearing phrases like "but we might…", "in the future…", "with this base class..", "if we just…".  Someone may say YAGNI (you aren't going to need it), but if we started with KISS, we might have avoided this.

In this session we'll look at some things we do as developers that make things difficult on ourselves and how to avoid them.  We'll look at the balance of laying out an architecture before we start, and over doing it.  We will examine the need to take a look at what the true purposes of the code we're writing is for.  We will talk about why we feel the need to over complicate code.

[That Conference](https://www.thatconference.com) August 9, 2017

---

#### Message Queues - Why should I use them
Messaging systems are not new. You may even be using one in some fashion already. However, ask yourself the following questions. Do you have scheduled jobs that require an IsSomething flag in your database? Do you have tables that have more than one IsSomething Flag? Do I have necessary duplicate data across my system? How did you accomplish it? Are my external processing tasks decoupled, scalable, or long running? Are there pieces of my system that do not need to be real-time? If you answered yes to any of these, this session is for you.

This session will introduce you to the how and why of using a message queue. We will start out looking at some common patterns with message queues, see some simple demonstrations of them, then look at some "real world" problems and how they can be solved with a message queue.

[Twin Cities Code Camp 18](https://twincitiescodecamp.com) April 25, 2015
[That Conference](https://www.thatconference.com) August 11, 2015

---

