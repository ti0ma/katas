require './FizzBuzz'
describe "#check " do
	it "writes Fizz when input is 3" do
		fizzbuzz(3).should eq("Fizz")
	end

	it "writes Buzz when input is 5" do
		fizzbuzz(5).should eq("Buzz")
	end

	it "writes Fizz when input is 6" do
		fizzbuzz(6).should eq("Fizz")
	end

	it "writes Buss when input is 10" do
		fizzbuzz(10).should eq("Buzz")
	end

	it "writes FizzBuzz when input is 15" do
		fizzbuzz(15).should eq("FizzBuzz")
	end

	it "writes 7 when input is 7" do
		fizzbuzz(7).should eq("7")
	end

	it "writes Fizz when input is 23" do
		fizzbuzz(23).should eq("Fizz")
	end

	it "writes Buzz when input is 52" do
		fizzbuzz(52).should eq("Buzz")
	end

	it "writes FizzBuzz when input is 53" do
		fizzbuzz(53).should eq("FizzBuzz")
	end
end