[![Build Status](https://travis-ci.org/renlesterdg/gilded-rose-exam.svg?branch=master)](https://travis-ci.org/renlesterdg/gilded-rose-exam)

### Setup

1. Install Ruby
2. Install Bundler `gem install bundler`
3. Fork this repository using your github account.
4. Create a local branch from your fork.
5. Run `bundle install` This will install all dependencies for our test runner, rspec.
6. Run `bundle exec rspec` or `rake` This will run all unit tests, Please ensure all tests are green.

If you have any question or clarification about the code. Please create an issue on the main repo and tag me @renlesterdg

### What do we expect?

- That you are able to fork a repo, create a branch and a pull request using git and github.
- That you can make multiple commits with a good commit message. Show us your best code and the steps you took not the final state of code.
- Unit tests are all passing (green) for each commit.
- New scenario is added with specs (unit tests) and is easy to read in code review.

### Instructions

- After forking the repository, please create a feature branch.
- Given the gilded-rose assignment below, update `gilded_rose#update_quality` to support `Conjured` items.
- You can refactor the existing implementation of `gilded_rose.rb` but the tests should be green on every commit.
- When you are done, Please open a `pull request` from YOUR `feature branch` to YOUR `master branch`.
- Please come prepared to talk about your approach per commit.


## Story

Hi and welcome to team Gilded Rose. As you know, we are a small inn
with a prime location in a prominent city run by a friendly innkeeper
named Allison. We also buy and sell only the finest
goods. Unfortunately, our goods are constantly degrading in quality as
they approach their sell by date. We have a system in place that
updates our inventory for us. It was developed by a no-nonsense type
named Leeroy, who has moved on to new adventures. Your task is to add
the new feature to our system so that we can begin selling a new
category of items. First an introduction to our system:

### Requirements

- All items have a `sell_in` value which denotes the number of days we
  have to sell the item
- All items have a `quality` value which denotes how valuable the item
  is
- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

  - Once the sell by date has passed, `quality` degrades twice as fast
  - The `quality` of an item is never negative
  - `Aged Brie` actually increases in `quality` the older it gets
  - The `quality` of an item is never more than 50
  - `Sulfuras`, being a legendary item, has no sell by date nor
    decreases in `quality`
  - `Backstage Passes`, like `Aged Brie`, increases in `quality` as its
    `sell_in` value approaches; `quality` increases by 2 when there are 10
    days or less and by 3 when there are 5 days or less but `quality`
    drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

- `Conjured` items degrade in `quality` twice as fast as normal items

Feel free to make any changes to the `update_quality` method and add any
new code as long as everything still works correctly. However, do not
alter the `Item` class as it belongs to the goblin in the corner who
will insta-rage and one-shot you as he doesn't believe in shared code
ownership.

Just for clarification, an item can never have its `quality` increase
above 50, however `Sulfuras` is a legendary item and as such its
`quality` is 80 and it never alters.

### Fave Engineering Culture

We just did a video and shared about our product and engineering culture you can [find it here](https://www.linkedin.com/posts/fave-group_wearefave-digitalproduct-product-activity-6592343555904245760-tlQm)

