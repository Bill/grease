Grease—The Git Release Notes Generator
=============================================

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

There is some code in the examples directory to exercise three situations:

* generic.rb exercises the models using synthetic data

* github.rb hits the Github API to grab some sample commits and drop you into the debugger (for further development).

* local.rb grabs and sorts the commits from your local repo and drops you into the debugger (for further development)


To Do
-----

( Connect to live Github data in github.rb)

1. initialize Commit objects from git commit stream

2. acquire issue data from Github and use it to initialize StateChange and TicketHistory objects

3. initialize ReleaseNotes from (1) and (2) 

( Tool-ize )

4. add command-line processing

( Product-ize )

5. specs and more

Usage
-----

Try this:

    $ cd examples
    $ ruby ./generic.rb

That'll exercise the models a little.

Also you can run:

    $ ruby ./github.rb

Which calls the Github API to grab the recent Rails commits (from Github). It drops you into the debugger where you can inspect the Rails commits.

    (rdb:1) pp commits

See the "To Do" section above for where to go next.

Similarly, there is an example that grabs git commit id's from your local repo:

    $ ruby ./local.rb

There you go. Now get to work.

License
-------

MIT. See the COPYING file included in the distribution for more information.