class StateChange
  # 'unknown' is a special state that a ticket is never actually in
  STATES = %w( unknown new resolved hold invalid open closed ).map( &:to_sym )
  attr_reader :commit_id
  attr_reader :new_state
  def initialize( commit_id, new_state)
    new_state = new_state.to_sym
    raise "bad Ticket state" unless STATES.include?( new_state)
    @commit_id = commit_id.to_s
    @new_state = new_state
  end
end