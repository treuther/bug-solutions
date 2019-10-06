# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - The Sinatra gem has been installed. This provides the Sinatra library that allows access to methods, such as get and post.
- [x] Use ActiveRecord for storing information in a database - ActiveRecord gem is installed and utilized by mapping ruby objects to database tables.
- [x] Include more than one model class (e.g. User, Post, Category) - There are 4 model classes for this project.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - The project includes User has_many Products, User has_many Bugs through Products.
- [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - The project includes Product belongs_to User, ProductBug belongs_to Bug and ProductBug belongs_to Product
- [ ] Include user accounts with unique login attribute (username or email)
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - The products_controller is complete with CRUD.
- [x] Ensure that users can't modify content created by other users - Helper methods, logged_in? and currenty_user are used within the controllers. If user is not the creater of a product, they have view rights only, or they are redirected to login in order to view or modify.
- [ ] Include user input validations
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code. - Description, install instructions, contributors guide and a link to the License has been provided.

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message - I am aware that I need to work on this one.