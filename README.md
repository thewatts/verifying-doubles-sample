# Verifying Doubles Example

- `git clone`
- `bundle`
- `bundle exec rspec`

```sh
F.

Failures:

  1) DeepThought.call returns the ultimate answer
     Failure/Error: generator = instance_double(UltimateAnswerGenerator, generate: 42)
       the UltimateAnswerGenerator class does not implement the instance method: generate
     # ./spec/deep_thought_spec.rb:6:in `block (3 levels) in <top (required)>'

Finished in 2.02 seconds (files took 0.05704 seconds to load)
2 examples, 1 failure

Failed examples:

rspec ./spec/deep_thought_spec.rb:5 # DeepThought.call returns the ultimate answer
```
