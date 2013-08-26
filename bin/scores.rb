#!/usr/bin/env ruby

require_relative '../lib/input_parser'
require_relative '../lib/scorer'

puts "(a)dd score (v)iew results e(x)it"

scores = ScoreList.new

input = gets
case input
when 'a'
	print "Please enter the score > "

	line = gets
	parser = InputParser.new(line)

	# get scores
	# foreach score, add_score
when 'v'
	scores.dump_output
when 'x'
	exit
end