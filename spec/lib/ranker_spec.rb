require "spec_helper"
require "ranker"

describe Ranker do
	describe "#build_ranks" do
		it "Take winning team hash, add it to a sorted 'ranks' hash." do
			Ranker.new({"The Braves" => 1,	"General Tarantulas" => 1})
			expect(Ranker.build_ranks).to eq(

			)
		end
	end
end