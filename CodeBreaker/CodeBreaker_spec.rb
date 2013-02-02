require './CodeBreaker'
describe CodeBreaker, " #check " do
	it "the X's" do
		game = CodeBreaker.new("RANI")
		game.check("YMYI").should eq("X")
		game.check("RMVI").should eq("XX")
		game.check("RMNI").should eq("XXX")
		game.check("RANI").should eq("XXXX")
	end

	it "the *'s" do
		game = CodeBreaker.new("RANI")
		game.check("YMIY").should eq("*")
		game.check("MRIV").should eq("**")
		game.check("NIRM").should eq("***")
		game.check("INAR").should eq("****")
	end

	it "the examples and my owns" do
		game = CodeBreaker.new("NRRI")
		game.check("RRRN").should eq("XX*")
		game.check("RRVN").should eq("X**")
		game.check("RNVN").should eq("***")
		game = CodeBreaker.new("RANI")
		game.check("YNYI").should eq("X*")
		game.check("RMVI").should eq("XX")
	end
end