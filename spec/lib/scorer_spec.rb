require "spec_helper"
require "scorer"

describe Scorer do 
	describe "#get_points" do
		it "Compare the teams in a given game, give the winning team 3 points." do
			ranker = Scorer.new([["The Braves", 2], ["General Tarantulas", 4]])
			expect(ranker.get_points).to eq(
				{ "General Tarantulas" => 3 }
			)
		end
		
		it "Compare the teams in a given game, give the winning team 3 points." do
			ranker = Scorer.new([["The Braves", 4], ["General Tarantulas", 2]])
			expect(ranker.get_points).to eq(
				{ "The Braves" => 3 }
			)
		end
		
		it "Compare the teams in a given game, give the winning team 3 points." do
			ranker = Scorer.new([["The Braves", 2], ["General Tarantulas", 2]])
			expect(ranker.get_points).to eq(
				{
					"The Braves" => 1,
					"General Tarantulas" => 1
				}
			)
		end
	end
end