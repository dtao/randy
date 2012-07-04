require File.join(File.dirname(__FILE__), "spec_helper")

require "randy"

describe Randy do
  describe "::string" do
    it "produces a string of the given length" do
      Randy.string(5).length.should == 5
    end

    it "produces an empty string given a length of zero" do
      Randy.string(0).length.should == 0
    end

    it "produces an empty string given a negative length" do
      Randy.string(-1).length.should == 0
    end

    it "includes only the specified characters in the result string" do
      Randy.string(100, ["a", "b", "c"]).should =~ /^[abc]{100}$/
    end

    it "will also accept a set of characters as a string" do
      Randy.string(100, "abc").should =~ /^[abc]{100}$/
    end
  end

  describe "::integer" do
    it "produces the only possible value for a range of size 1" do
      Randy.integer(42..42).should == 42
    end

    it "produces a value within the given range" do
      1000.times do
        (1..10).should include(Randy.integer(1..10))
      end
    end

    it "might potentially produce the max of an inclusive range" do
      1000.times.map { Randy.integer(1..5) }.should include(5)
    end

    it "will not produce the max of an exclusive range" do
      1000.times.map { Randy.integer(1...5) }.should_not include(5)
    end
  end
end
