# _Zach's Speciality Foods_

#### _Mock Grocery Store, 6.30.2017_

#### By _**Zach Beecher**_

## Description

_Project
You've in the running for a freelance development job, as the developer for Mario's Speciality Food Products (or another fictional company of your choosing, if you'd prefer). This is your chance to take on your first long-term contract, but first Mario wants to make sure you're the right person for the job. He's asked you for an MVP and wants it by 5:00 tonight. The stakes are higher than usual, since Mario's old site had thousands of unique visitors each day. If you can get the job, this is a great way to increase your profile as a developer.

In particular, Mario is concerned about the information in his database being correct; your goal for today is to have the most comprehensive validations and callbacks to ensure information is properly saved and formatted in the database.

Database

The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country of origin. All reviews should have author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well.

Landing Page

The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews. See more information in the Scopes section below.

Products

The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

Site admins should be able to add, update and delete new products. (Don't worry about user authentication; assume everyone who visits the site is an admin for now).
Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating; that's included in the further exploration section.)
Users should be able to add a review to a product.
Scopes

Your site should use scopes to display the following information on the site:

The product with the most reviews.
The three most recently added products.
All products made in the USA for buyers that want to buy local products.
Validations

Your site should include validations for the following:

All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
The review's content_body must be between 50 and 250 characters.
Seeding

Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.
Overall Styling

You'll be demoing this site to the CEO of Mario's Specialty Foods, so it should look presentable.

Further Exploration
If you're able to complete the primary objectives with time to spare, consider adding additional features, such as:

Paginate products so a page of results will only show ten products at a time.
Allow users to group products by a country of origin of their choice.
Add a 'featured' boolean so admins can choose which products they'd like to feature.
Show the average rating for each product.
Add a scope to retrieve the products with the highest average rating.
Change the ratings system so stars (or another icon) are used instead of a number.
Add Images throughout the site, including images for Products. You can use URLs (easiest) or use the Paperclip gem (which we'll be covering next week).
Jump ahead to next week and add user authentication to your site.
Choose a site online with a style you like, build a style for this site based on it, and include a link to that site within the README.md file._

## Setup/Installation Requirements
_You will need Ruby/Rails and postgres to run this app locally._

* _Clone this repository from https://github.com/ziggity/week1_rails.git :)_
* _Run the command $'bundle install'_
* _Use mac command or windows cntrl t to open a second terminal window, in that window run the command $'postgres'_
* _Back in the original window, run command $'rake db:create db:migrate'_
* _Run the command $'rails serve'_
* _Open your favorite web browser and punch in 'localhost:3200'_

## Known Bugs

_None yet_

## Support and contact details

_Comments welcome! @zachbeecher on twitter!_

## Technologies Used

_Ruby on Rails, ActiveRecord, standard HTML stuff_

### License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*

Copyright (c) 2017 **_Zach Beecher_**
