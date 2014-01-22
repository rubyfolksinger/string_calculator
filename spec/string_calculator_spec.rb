require_relative "../string_calculator"

describe StringCalculator do

  #req 1:
  it "should return 0 if the string is empty" do
    StringCalculator.add("").should == 0
  end

  #req 1:
  it "should accept one number in a string and return a proper sum" do
    StringCalculator.add("1").should == 1
  end

  #req 1:
  it "should accept two numbers in a string and return a proper sum" do
    StringCalculator.add("1,2").should == 3
  end

  #req 2:
  it "should accept more than two numbers in a string and return a proper sum" do
    StringCalculator.add("1,2,3").should == 6
  end

  #req 3:
  it "should treat newlines between numbers as a delimter" do
    StringCalculator.add("1\n2,3").should == 6
  end

  #req 3:
  it "should raise an error if a newline is passed at the end" do
    expect{ StringCalculator.add("1,\n") }.to raise_error
  end

  #req 4:
  it "should allow an alterate delimeter to be specified" do
    StringCalculator.add("//;\n1;2").should == 3
  end

  #req 4:
  describe "when using an alternate delimiter" do
    it "should accept one number in a string and return a proper sum" do
      StringCalculator.add("//;\n1").should == 1
    end

    it "should accept two numbers in a string and return a proper sum" do
      StringCalculator.add("//;\n1;2").should == 3
    end

    it "should accept more than two numbers in a string and return a proper sum" do
      StringCalculator.add("//;\n1;2;3").should == 6
    end

    it "should treat newlines between numbers as a delimter" do
      StringCalculator.add("//;\n1\n2;3").should == 6
    end

    it "should raise an error if a newline is passed at the end" do
      expect{ StringCalculator.add("//;\n1;\n") }.to raise_error
    end
  end

  #req 5
  it "should raise an error when passed a negative number" do
    expect{ StringCalculator.add("1,-2") }.to raise_error StandardError
  end
  
  #req 5
  it "should specify all invalid input when passed negative numbers" do
    expect{ StringCalculator.add("-1,-2") }.to raise_error StandardError, "negatives not allowed: [-1,-2]"
  end
end