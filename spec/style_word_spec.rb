require("rspec")
require("style_word")

describe("String#style_word") do
  it("adds a span tag with a given class name to the object string if it equals the first argument") do
    expect("bird".style_word("bird", "new")).to(eq("<span class='new'>bird</span>"))
  end

  it("returns the string if the first argument is one word and different") do
    expect("bird".style_word("bear", "new")).to(eq("bird"))
  end

  it("adds the span tag to instances of the first argument in a string of any length") do
    expect("This bird, I think, is a cool bird.".style_word('bird', 'new')).to(eq(
    "This <span class='new'>bird</span>, I think, is a cool <span class='new'>bird</span>."))
  end

  it("adds the span tag to capitalized versions of the word") do
    expect("Bird, you are a cool bird.".style_word('bird', 'new')).to(eq(
    "<span class='new'>Bird</span>, you are a cool <span class='new'>bird</span>."))
  end
end
