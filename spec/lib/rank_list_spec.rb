require "spec_helper"
require "rank_list"

describe RankList do
	describe "#build_ranks" do
		it "Take winning team hash, add it to a sorted 'ranks' hash." do
			lister = RankList.new({"Snakes" => 1,	"FC Awesome" => 1,
															"Lions" => 5, "Grouches" => 0, "Tarantulas" => 6})
			expect(lister.build_ranks).to eq(
				{
				"Tarantulas" => 6,
				"Lions" => 5,
				"FC Awesome" => 1,
				"Snakes" => 1,
				"Grouches" => 0
				}	
			)
		end
	end

	# describe "#output_ranks" do
	# 	it "Take winning team hash, add it to a sorted 'ranks' hash." do
	# 		lister = RankList.new({"Snakes" => 1,	"FC Awesome" => 1,
	# 														"Lions" => 5, "Grouches" => 0, "Tarantulas" => 6})
	# 		expect(lister.build_ranks).to eq(
	# 			"1. Tarantulas, 6 pts \n 2. Lions, 5 pts \n 3. FC Awesome, 1 pt \n 3. Snakes, 1 pt \n 5. Grouches, 0 pts\n"
	# 		)
	# 	end
	# end

end