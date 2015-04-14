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


### User sign-out (or sign-in again) ###

- Make a route to clear out the session
- Redirect to home
- Add sign out links

```ruby
session[:user_id] = nil

# OR
reset_session
```


### Buy items ###

- Show list of other people's items or auctions (new page)
- See a single item or auction
- That page will have a bid form
  - Bid must be higher than starting price
  - Bid must be higher than the previous bid
  - Bid must be associated to user
  - Bid must be associated to item/auction
- Item's list of bids


### Auctions have an expiration or end date ###

- When you access the single item or auction page, check if date is passed
- If date is passed render a different ERB (or add an if to existing ERB)
- Add validation on POST route to make sure you can't bid on expired items
- Display winning bid and user on expired auction page


### Items you've bid on ###

- Retrieve a list of your bids and through those get the list of items
- Do the previous step in the model
- Add a page to show these items

```ruby
@user = User.find(session[:user_id])
@items = @user.items_bid_on
```