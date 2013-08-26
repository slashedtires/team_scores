class Scorer
	def initialize(team_scores)
		@team_scores = team_scores
	end

	def get_points
		team1 = @team_scores[0]
		team2 = @team_scores[1]

		if team1[1] > team2[1]
			{ team1[0] => 3 }
		elsif team1[1] < team2[1]
			{ team2[0] => 3 }
		elsif team1[1] == team2[1]
			{
				team1[0] => 1,
				team2[0] => 1
			}
		end
	end
end