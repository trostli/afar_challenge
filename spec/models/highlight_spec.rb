require 'spec_helper'

describe Highlight do
  before(:each) do
    @highlight = Highlight.new(title: "My little pony", description: "I love my little pony.")
    @highlight.save
  end

  it "saves title into database" do
    expect(@highlight.title).to eq("My little pony")
  end

  it "saves body into database" do
    expect(@highlight.description).to eq("I love my little pony.")
  end

  it "should require a title" do
    Highlight.new(:title => "").should_not be_valid
  end

  it "should require a description" do
    Highlight.new(:description => "").should_not be_valid
  end

end