:bank: *Bank Tech Test - Ruby*
------

![program](https://user-images.githubusercontent.com/40179292/54224923-72c81380-44f2-11e9-9016-5659f7c359ee.png)

The approach I used to build this app it is splittable in 4 steps:
1. I wrote User Stories based on the given Acceptance Criteria (see at the bottom of this README)
2. Diagramming with pen and paper to decide how many classes I needed respecting a Single Responsibility Principle
3. I started from the main bank account, so the user could open a bank account.
4. Once the user could have a bank account, I started to implement features:
  * Deposit;
  * Withdraw;
  * Raising an error for withdraws exceeding the balance;
  * Printing a statement.
5. In between each of these steps, when needed, I refactored my code and then started again to implement new features.

:clipboard: User Stories
------

```
As a customer,
I am looking for a reliable bank,
I would like to open a bank account.

As a customer,
I have some savings,
I would like to deposit my savings on my bank account.

As a customer,
Anytime I would like to spend my money,
I want to withdraw money from my bank account.

As a bank owner,
To not let a customer withdraws more money than they actually have,
I want my system to check whether the customer has enough money for that transaction or not.

As a customer,
To check how much money I have left,
I would like to print a bank statement.
```

:memo: Getting started
------

1. Clone this repo `git@github.com:emanuelegorga/bank_tech_test_ruby.git`
2. Change directory `cd bank_tech_test_ruby`
3. Run `bundle install` to install dependencies

:point_right: Usage
-----
1. Open your IRB
2. Require the main file `require ./lib/bank_account`
3. Create a new instance of BankAccount `bank_account = BankAccount.new`
4. You can deposit on your account `bank_account.deposit(50)`
5. You can withdraw from your account `bank_account.withdraw(30)`
6. Print a statement `bank_account.statement`


:vertical_traffic_light: Running tests and check the coverage
------
* Run RSpec `rspec`

![test](https://user-images.githubusercontent.com/40179292/54225331-5d9fb480-44f3-11e9-9ed5-bff67c60a392.png)

:construction: Technologies I used
-----
* Ruby
* RSpec - Testing framework
* SimpleCov - Coverage
* Rubocop - Linter

## :scroll: License

© [Emanuele Gorga][linkedin] | [CV Github][github]

[github]:  https://github.com/emanuelegorga/CV
[linkedin]: https://www.linkedin.com/in/emanuelegorga/

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date       || credit  || debit   || balance
14/01/2012 ||         || 500.00  || 2500.00
13/01/2012 || 2000.00 ||         || 3000.00
10/01/2012 || 1000.00 ||         || 1000.00
```
