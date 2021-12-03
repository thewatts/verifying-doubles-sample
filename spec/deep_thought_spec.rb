require "./lib/deep_thought"

RSpec.describe DeepThought do
  describe ".call" do
    it "returns the ultimate answer" do
      generator = instance_double(UltimateAnswerGenerator, generate: 42)

      allow(DeepThought)
        .to receive(:generator)
        .and_return(generator)

      expect(DeepThought.answer)
        .to eq "The Answer to the Great Question... Of Life, the Universe and Everything... Is... Forty-two"
    end
  end
end
