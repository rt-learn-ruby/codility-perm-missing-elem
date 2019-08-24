# frozen_string_literal: true

require './solution'

# [] Test happy paths
# [] Test edge cases
# [] Large data

describe 'solution' do
  context 'When testing the solution' do
    max_input = (1..99_999).to_a.shuffle
    inputs = [
      [2, 3, 1, 5],
      max_input
    ]

    expecteds = [4, 100_000]

    inputs.each_with_index do |input, index|
      describe "given #{input}" do
        it "returns #{expecteds[index]}" do
          result = solution(input)
          expect(result).to eq expecteds[index]
        end
      end
    end
  end
end
