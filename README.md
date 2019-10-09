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

Be sure to clone this lab either via GitHub's HTTP or SSH.

Once installed, in your terminal be sure to run bundle install, or bundle exec install so that the appropriate gems load for this application.

bundle Install

run shotgun


## Usage

After installation, run `shotgun` in your terminal. Once shotgun is running, be sure to follow the instructions of either ctrl + click on the provided local host link (ie http://127.0.0.1:9393) or copying and pasting the provided link into a new browser level.

Once you have the browser loaded with the BugSolutions site, follow screen instructions of either logging in or signing up to look through lists of products or to create your own.

Once you are logged in, explore the application by clicking on the different link options, such as View by Product, View by Bug, Create New Product and Edit Product.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/treuther/bug-solutions. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CoffeeSale project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'dependable-transpiler-5955'/coffee_sale/blob/master/CODE_OF_CONDUCT.md).