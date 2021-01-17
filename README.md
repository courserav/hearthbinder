# Hearthbinder

Welcome to Hearthbinder! This gem is designed to be used in conjunction with the Hearthstone videgame, developed by Blizzard. Users will need to 
create an account at 'rapidapi.com'. Once you're signed up with an account you can get an API key from the site, which will be used with the gem. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hearthbinder'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hearthbinder

## Usage

Head over to 'hearthstoneapi.com' and you can access the endpoint from there. Go to the rapidapi site from the link provided on the site. 
Once you are logged into 'rapidapi.com' you'll be able to see your API key. It's under "header parameters - X-RapidAPI-Key". 
You can copy the whole key as it shows up under the code snippets section and then paste it directly into the gem when prompted. 

Once you are past that part, you can copy a deck code either straight from the copy button in the Hearthstone client or a Hearthstone website that also has the 
deck code copy feature (although it's best recommended to get it straight from the client). From there you can paste directly into the gem with no edits. 

Option 1 "Paste Deck" just lets you set up a new deck to use with the gem during a session. Same as the initial setup, paste a deck code directly copied from the client
or an appropriate Hearthstone website that also uses the deckcode feature. 
Option 2 "View Deck" will let you see a basic layout of the deck. Name, class, format, year, and the card list.
Option 3 "Sort Alphbetically" does just that. It just sorts the cards by the first letter in the name. 
Option 4 "Show Curve" will display the mana curve for the deck so you can see what the game flow is going to generally look like. 
Option 5 "Show Legendaries" displays a set of information about the deck players hopefully find useful. This includes legendary cards and will have other information over time. 

Currently only supports English. 

More features will be added as I progress further in my training. If you took the time to install and use this gem for your Hearthstone needs while working or gaming, then I sincerely appreciate it. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hearthbinder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/hearthbinder/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hearthbinder project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hearthbinder/blob/master/CODE_OF_CONDUCT.md).
