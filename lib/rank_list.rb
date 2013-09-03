class RankList
	def initialize(team_ranks)
		@team_names_and_ranks = team_ranks
	end

	def build_ranks
		@team_name_and_ranks.sort_by do |team_name, team_rank|
			[-Integer(team_rank), team_name] 
		end
	end

#	def output_ranks

#	end
end