# Test for minitest-rails 3.0.0.rc1

This demonstrates a problem I'm having with `minitest-rails 3.0.0.rc1` and `rails 5.0.0.rc1`. I've built a very simple Rails 5 app that just has a `welcome#index` route. When I run the tests I get this:

```
bill@mbp minty-test-5$ rails test
Running via Spring preloader in process 91995
Run options: --seed 51295

# Running:

E

Error:
WelcomeController#test_0001_shows index:
URI::InvalidURIError: bad URI(is not URI?): http://www.example.com:80index
    test/controllers/welcome_controller_test.rb:6:in `block (2 levels) in <top (required)>'


bin/rails test test/controllers/welcome_controller_test.rb:5



Finished in 0.399182s, 2.5051 runs/s, 0.0000 assertions/s.

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```

It looks like the domain doesn't have a trailing backslash so the URI is not valid:

```
http://www.example.com:80index
```

Any ideas?

-
Bill
