require "./lib/deep_thought"

RSpec.describe DeepThought do
  describe ".call" do
    context "using a verifying double" do
      it "(correctly) fails" do
        generator = instance_double(UltimateAnswerGenerator, generate: 42)

        allow(DeepThought)
          .to receive(:generator)
          .and_return(generator)

        expect(DeepThought.answer)
          .to eq "The Answer to the Great Question... Of Life, the Universe and Everything... Is... Forty-two"
      end
    end

    context "with a non-verifying double" do
      it "(incorrectly) passes - b/c it can't know that the generator API has changed" do
        generator = double(generate: 42)

        allow(DeepThought)
          .to receive(:generator)
          .and_return(generator)

        expect(DeepThought.answer)
          .to eq "The Answer to the Great Question... Of Life, the Universe and Everything... Is... Forty-two"
      end
    end
  end
end
