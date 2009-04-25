# give ourselves the nice little &:foo shorthand for mapping through an instance method
class Symbol
  def to_proc
    proc { |obj, *args| obj.send(self, *args) }
  end
end

require 'commit'
require 'state_change'
require 'ticket_history'
require 'release_notes'