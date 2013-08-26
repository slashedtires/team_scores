require "spec_helper"
require "input_parser"

describe InputParser do
	describe "#teams" do
		it "should return a pair of [team, score]" do
			parser = InputParser.new("Braves 2, Generals 4")

			expect(parser.teams).to eq([
				["Braves", 2],
				["Generals", 4]
			])
		end

		it "should handle team names with more than 1 word" do
			parser = InputParser.new("The Braves 2, Generals 4")

			expect(parser.teams).to eq([
				["The Braves", 2],
				["Generals", 4]
			])
		end

		it "should handle team names with more than 1 word" do
			parser = InputParser.new("The Braves 2, The Generals 4")

			expect(parser.teams).to eq([
				["The Braves", 2],
				["The Generals", 4]
			])
		end
	end
end