Git Release Notes Generator
===========================

If you have an issue tracking system that references your Git repository then you ought to be able to generate release notes reports. A release notes report tells you things like:

* what issues (bugs) are present in (as of) a given commit

* what issues were fixed between two releases (between two commits)

This project provides simple models that may be adapted to your Git repository and ticket tracking system to generate these reports. 

Current Status
--------------

There are models in place for:

* Commit - a Git commit identifier

* StateChange - a state change on an issue/ticket

* TicketHistory - binds together state changes (over time) for a particular issue/ticket

* ReleaseNotes - constructed with commits and ticket histories, this object will produce release notes

There is some code in the examples directory to exercise these classes (generic.rb). Also there's code (in github.rb) to hit the Github API to grab some sample commits and drop you into the debugger (for further development).


To Do
-----

( Connect to live data )

1. initialize Commit objects from git commit stream (from Github API or from command line `git rev-list --topo-order --reverse HEAD`

2. grab ticket/issue data (from somewhere TBD) and use it to initialize StateChange and TicketHistory objects.

3. initialize ReleaseNotes from (1) and (2)

( Tool-ize )

4. add command-line processing


Usage
-----

Try this: from the lib directory run:

`$ ruby ./release-notes.rb`

That'll exercise the models a little, and then call the Github API to grab the recent Rails commits (from Github). It drops you into the debugger where you can inspect the Rails commits:

`(rdb:1) pp commits`

There you go. Now get to work.

License
-------

MIT. See the COPYING file included in the distribution for more information.