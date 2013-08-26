class InputParser
	def initialize(entry)
		@entry = entry
	end

	def teams
		@entry.split(',').map do |team|
			parse_team_into_team_and_score(team)
		end
	end

private

	def parse_team_into_team_and_score(team)
		team_and_score = team.split(' ')
		score = team_and_score.pop.to_i

		[team_and_score.join(' '), score]
	end
end