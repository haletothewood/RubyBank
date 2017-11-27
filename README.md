[![Build Status](https://travis-ci.org/haletothewood/RubyBank.svg?branch=master)](https://travis-ci.org/haletothewood/RubyBank)

# Bank

[A tech test set during Week 10 at Makers Academy](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md) written in Ruby and tested with Rspec.

## Extracted User Stories

```
As a user,
so that I can keep my money safe,
I want to be able to keep it in a bank account.
```
```
As a user, 
so that I can add money to my account,
I want to be able to make a deposit.
```
```
As a user, 
so that I can spend my money,
I want to be able to make a withdrawal.
```
```
As a user,
so that I can keep track of my money,
I want to be able to print a statement.
```

## Functionality
```sh
[1] pry(main)> require './lib/account.rb'
=> true
[2] pry(main)> require './lib/atm.rb'
=> true
[3] pry(main)> require './lib/history.rb'
=> true
[4] pry(main)> require './lib/statement.rb'
=> true
[5] pry(main)> require './lib/transaction.rb'
=> true
[6] pry(main)> atm = ATM.new(Account.new(0, Transaction, History.new), Statement)
=> #<ATM:0x007feca49e01b8
 @account=#<Account:0x007feca49e0258 @balance=0, @history=#<History:0x007feca49e02a8 @transactions=[]>, @transaction=Transaction>,
 @statement=Statement>
[7] pry(main)> atm.deposit(500)
=> 500
[8] pry(main)> atm.withdraw(400)
=> 100
[9] pry(main)> atm.show_statement
date || credit || debit || balance
2017-11-27 || 500 ||  || 500
2017-11-27 || || 400 || 100
```

## My Approach

I began with extracting the user stories from the requirements provided in the challenge. From this I diagrammed using CRC cards and so had a mental model of the classes I wanted to create. I implemented the code using TDD and tight refactoring loops and was intential from the start about ensuring I was delegating appropriately and injecting dependancies when and were neccessary. This ensured my code was obeying SOLID principles as much as possible.

