class ReleaseNotes
  attr_reader :commits, :ticket_histories
  
  # commits are provided topographically sorted and in chronological order a la 
  #  git rev-list --topo-order --reverse HEAD
  def initialize( commits = [], ticket_histories = [])
    @commits = commits
    @ticket_histories = ticket_histories.inject( {} ){ | histories, h| histories[h.id.to_s] = h; histories }
  end
  
  def ticket_state_as_of_commit( ticket_id, commit_id)
    ticket_id = ticket_id.to_s; commit_id = commit_id.to_s
    return :unknown unless @ticket_histories.has_key?( ticket_id )
    @ticket_histories[ ticket_id ].state_as_of( commit_id, self.commits)
  end
end