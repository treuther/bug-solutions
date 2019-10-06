# BugSolutions

Welcome to BugSolutions!

This is a Sinatra Portfolio project for the purpose of creating a CRUD, MVC app using Sinatra.

The app's intended use it to help Pest Management Professionals track insecticide products they use to control specific insects.

In order to use this application, the user must either login or signup for an account.

Once the user is logged in, the user will be able to see a list of all products that have been created in the application, as well as access to create new products to be stored in the application database. The user will also have access to view a list of bugs that are associated with each product.

If the product was NOT created by the user, the user will have view access only.

If the product was created by the user, the user will have access to edit and delete each of their own products.

Bugs cannot be deleted as an independent entity, rather bugs can be edited or deleted based on the product association within product edits.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bug-solutions'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bug-solutions

## Usage

After installation, run `shotgun` in your terminal. Once shotgun is running, be sure to following the instructions of either ctrl + click on the provided local host link (ie http://127.0.0.1:9393) or copying and pasting the provided link into your browser.

Once you have the browser loaded with the BugSolutions site, follow screen instruction of either logging in or signing up to look through lists of products or to create your own.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/treuther/bug-solutions. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CoffeeSale project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'dependable-transpiler-5955'/coffee_sale/blob/master/CODE_OF_CONDUCT.md).