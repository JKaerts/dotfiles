# The ticket system

## Files

Ticket number `n` is stored in the file `.issues/n.txt` with the following
format:

```text
ticket: n
responsible:jonas
status:open
title: Title here
----
Describe your problem here
```

The status is either open or closed.

## Usage

This system is designed for a closed group of contributors. New issues should
only be opened on the master branch.

Finding the number of open tickets can be easily done with grep:

```shell
grep 'status:open' .issues/* | wc
```
