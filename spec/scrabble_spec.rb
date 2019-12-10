require('rspec')
require('scrabble')

describe('Score#score_counter') do
  it('returns a scrabble counter for letter a') do
    a = Score.new('A')
    expect(a.score_counter).to(eq(1))
  end
  it('returns a scrabble counter for letter G') do
    g = Score.new('G')
    expect(g.score_counter).to(eq(2))
  end
  it('returns a scrabble counter for word HI') do
    hi = Score.new('HI')
    expect(hi.score_counter).to(eq(5))
  end
  it('returns a scrabble score for word HELLO') do
    hello = Score.new('HELLO')
    expect(hello.score_counter).to(eq(8))
  end
  it('returns a scrabble score for word hello') do
    hello2 = Score.new('hello')
    expect(hello2.score_counter).to(eq(8))
  end
end
