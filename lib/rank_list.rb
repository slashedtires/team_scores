class RankList
	def initialize(team_ranks)
		@team_ranks = team_ranks
	end

	def build_ranks
		@team_ranks.sort_by { |team_name, team_rank| [team_rank, team_name] }
		@team_ranks.sort_by {|team_rank| team_rank}.reverse
	end

#	def output_ranks

#	end
end