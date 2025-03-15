# prolog-three-valued-logic
This repo provides reified three-valued logic predicates like and, or and not, implementing a third logical value 'u' which means "unknown".

## How to use it

Suppose I'm feeling hungry now and make two statements: "*I'll eat today*" and "*maybe I'll eat tomorrow*".

We can express these two statements as the following Prolog statement:

`EatTomorrow = u, EatToday = true`

That is, EatTomorrow's logical value is *unknown* and EatToday's value is true, because i'll certainly eat today, as I'm feeling hungry, but I'm not so certain of eating tomorrow.

Then the phrase "*I'll eat today and eat tomorrow*" can be expressed as follows in Prolog:

`andt(EatTomorrow, EatToday, T)` where T will be the logical value of the phrase.

Since it is uncertain that I'll eat tomorrow, it can only be that that it's also uncertain that I'll eat today and eat tomorrow, in other words, the logical value of  "*I'll eat today and eat tomorrow*" must be 'u' \(*unknown*\).

Therefore, the Prolog query:

```prolog
?- EatTomorrow = u, EatToday = true, andt(EatTomorrow, EatToday, T)
```

will yield the display the following result:

```prolog
?- EatTomorrow = u, EatToday = true, andt(EatTomorrow, EatToday, T).
EatTomorrow = T, T = u,
EatToday = true.
```


## To-Do
More possibly to come in the future.