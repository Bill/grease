#!/usr/bin/env ruby

require 'environment'
require 'grease'

commits = %w(1 2 3 4).map{|id| Commit.new( id )}
ticket_histories = [
# ticket id, found in commit id, array of ticket histories
  [ 1, 1, [ [2, :closed], [4, :open] ].map{|c| StateChange.new( *c) } ],
  [ 2, 2, [ [3, :resolved] ].map{|c| StateChange.new( *c) } ],
  [ 3, 5, [ [6, :resolved] ].map{|c| StateChange.new( *c) } ]
  ].map{|t| TicketHistory.new( *t ) }

notes = ReleaseNotes.new( commits, ticket_histories)

(1..4).each do | ticket |
  (1..5).each do | commit |
    puts "Ticket #{ticket} state as of commit #{commit} is #{notes.ticket_state_as_of_commit(ticket, commit)}"
  end
end
