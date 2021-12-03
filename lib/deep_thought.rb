require "humanize"
require_relative "./ultimate_answer_generator"

module DeepThought
  extend self

  def answer
    result = generator.generate
    humanized_result = result
      .humanize
      .capitalize

    "The Answer to the Great Question... Of Life, the Universe and Everything... Is... #{humanized_result}"
  end

  def generator
    @generator ||= UltimateAnswerGenerator.new
  end
end
