require "./lib/ultimate_answer_generator"

RSpec.describe UltimateAnswerGenerator do
  describe "#generate" do
    it "generates the answer" do
      generator = UltimateAnswerGenerator.new

      result = generator.call
      expect(result).to eq 42
    end
  end
end
