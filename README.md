# Test-Driven Development

This is an introduction to test-driven development and other testing ideas.

NOTE: I setup some of the packages referenced below in mix.exs including hound.  You
will need to follow the instructions on Hound's README page to setup hound
properly which requires a webdriver installed and running.

## References and Links

### Learning
* [ExUnit](https://hexdocs.pm/ex_unit/ExUnit.html) Elixir's built in testing framework
* [Elixir School chapter on testing](https://elixirschool.com/lessons/basics/testing/)

### DSL on top of ExUnit to write clearer tests
* [True Story](https://github.com/ericmj/true_story)

### Test-Driven Development
* Test Driven Development: By Example, Kent Beck, Addison-Wesley Longman, 2002

### Behavior-Driven Development
* [Wikipedia's article on BDD](https://en.wikipedia.org/wiki/Behavior-driven_development)
* [pavlov](https://github.com/sproutapp/pavlov) an Elixir BDD framework built on top of ExUnit
* [espec](https://github.com/antonmi/espec) an Elixir BDD framework NOT built on ExUnit

### Browser Automation
* [Hound](https://github.com/HashNuke/hound)
* [Wallaby](https://github.com/keathley/wallaby)


### Tips from Jose
* [Mocks and Explicit Contracts](http://blog.plataformatec.com.br/2015/10/mocks-and-explicit-contracts/)
* [Testing Private Functions](http://stackoverflow.com/questions/20949358/is-there-a-way-to-test-private-functions-in-modules-in-exunit-of-elixir)
* [Ecto 2.0 eBook](http://pages.plataformatec.com.br/ebook-whats-new-in-ecto-2-0) see the section on Testing Factories

### Quick Check (Advanced Topic)
* [QuickCheck for Elixir Presentation at ElixirConf EU 2015](https://www.youtube.com/watch?v=nbpZRm9gl50)
* [ExCheck](https://github.com/parroty/excheck) an Elixir implementation of QuickCheck
* [QuviQ's site](http://quviq.com) provides information on benefits of property-based testing.  They also provide a free and commercial implementation of QuickCheck in Erlang.  See the 'Successes' tab for some awesome examples of its usefulness.
