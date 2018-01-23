require 'rspec' 
require_relative '../../app/models/counter'

describe 'counter' do
  
  it '"should h:1, e:1, l:2, o:1 when input is hello"' do
    @counter = Counter.new
    
    map = @counter.countCharacters("hello")
    expect(map["h"]).to eq 1
    expect(map["e"]).to eq 1
    expect(map["l"]).to eq 2
    expect(map["o"]).to eq 1
 
  end

  it '"should return all lower case when input is HEllO"' do
    @counter = Counter.new
    
    map = @counter.countCharacters("HEllO")
    expect(map["h"]).to eq 1
    expect(map["e"]).to eq 1
    expect(map["l"]).to eq 2
    expect(map["o"]).to eq 1
  end

  it '"should ignore ! symbol when input hi!"' do
    @counter = Counter.new
    
    map = @counter.countCharacters("hi!")
    expect(map["h"]).to eq 1
    expect(map["i"]).to eq 1
    expect(map["!"]).to eq nil

  end

  it '"should ignore ? symbol when input hi?"' do
    @counter = Counter.new
    
    map = @counter.countCharacters("hi?")
    expect(map["h"]).to eq 1
    expect(map["i"]).to eq 1
    expect(map["?"]).to eq nil

  end

end