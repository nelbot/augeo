Nizar's Breakdown Methodology
=============================

1. Come up with high-level list of features.
2. Prioritize the list of features.
  - some aren't possible without a previous step.
  - prioritize based on the order a user would do them.
3. Take the first feature and figure out a specific list of tasks to make it happen.
4. Prioritize the list of tasks.
4. Repeat #3 and #4 for every feature.


Example: Auction Exercise
-------------------------

We want to create an auction site.

Users can add new items to sell and a date to end the auction. Other users can bid for the item. Once the date limit has expired the item is sold to the user with the higest offer and it will not be possible to bid more.

Note: You don't need authentication for this. To identify a user just ask for his email. At this moment we will believe every user.


### Feature-list ###

- User sign-in
- Sell items
- User sign-out (or sign-in again)
- Buy items
- Auctions have an expiration or end date
- When the auction is over, award the item to the highest bidder



### User sign-in tasks ###

- Create a User model with email field.
- Create a route for the login form.
- Create a controller for user business.
- Add form HTML to login ERB.
- Form will have an email field (type="email").
- Add validations to email.
- If user is new, create new user in DB.
- Sign in the user via the session.
- Redirect them to (initially empty) items page.


### Sell items  tasks ###
- Create a route for "add item" page
- Make a link to the "add item" page
- Create Auction or Item model
- Create a controller for auction/item business
- Create "add item" page with a form
- Form should contain:
  - name of item
  - description
  - starting price
  - expiration date
  - (item image)
- When you submit the form
  - Associate user with the auction
  - Save auction to the database
  - Redirect back to items page.
- Items page needs to show user's items.