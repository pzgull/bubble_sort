require 'spec_helper'
require './bubble.rb'

array = (1..10).to_a.shuffle

RSpec.describe Bubble do
    it 'works' do
        bubble = Bubble.new(array)
        expect(bubble.sort()).to match(array.sort)
    end
end
