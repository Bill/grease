class TicketHistory
  attr_reader :id
  attr_reader :found_in_commit_id
  attr_reader :state_changes
  def initialize( id, found_in_commit_id = nil, state_changes = [])
    @id                 = id.to_s
    @found_in_commit_id = found_in_commit_id.to_s
    @state_changes      = state_changes.inject( {} ){ | changes, c| changes[c.commit_id.to_s] = c; changes }
  end
  def state_as_of( commit_id, commits)
    commit_id = commit_id.to_s
    return :unknown unless i = commits.index( Commit.new( commit_id ) )
    state = :unknown
    commits = commits[0..i]
    commits.each do | commit |
      if commit.id == self.found_in_commit_id
        state = :new
      elsif change = @state_changes[ commit.id ]
        state = change.new_state
      end
    end
    state
  end
end