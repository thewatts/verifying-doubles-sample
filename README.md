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

## The Why

The DSL of the generator has changed - but the usage in the `DeepThought` class has not been updated.

If a regular double was used, ex: `double(generate: 42)` instead of `instance_double(UltimateAnswerGenerator, generate: 42)`, the test would **pass** - even though the generator no longer has a `generate` method.

This creates a situation where you've mocked something out - and it changes - but your test suite doesn't catch the change. You'd only find out in QA/Production.
