# IP Networking: Ping Output to Comma Separated Values (CSV) at Runtime

This Bash script may be executed on a terminal or by a task scheduler such as [cron](https://crontab.guru/) and it does the following:

1. Execute [ping](https://linux.die.net/man/8/ping) with the rest of the arguments supplied.
2. Translate the ping output into a computable Comma Separated Values (CSV) format with:
   1. The date and time in YYYYMMDDHHMMSS e.g. 20210419024510,
   2. The number of seconds since the [epoch](https://linux.die.net/man/1/date) that is since 1970-01-01 00:00:00 UTC,
   3. The destination IP address, and
   4. The corresponding Round Trip Time (RTT)

A detailed walk-through is available [here](https://kurtcms.org/networking-ping-output-to-comma-separated-values-csv-at-runtime/).

<img src="https://kurtcms.org/git/pingc/pingc-screenshot.png" width="550">

## Table of Content

- [Getting Started](#getting-started)
  - [Git Clone](#git-clone)
  - [Permission](#permission)
  - [Run](#run)

## Getting Started

Get started in three simple steps:

1. [Download](#git-clone) a copy of the script;
2. Provide the script with execute [permission](#permission);
3. [Run](#run) the script manually.

### Git Clone

Download a copy of the script with `git clone`

```shell
$ git clone https://github.com/kurtcms/pingc /app/
```

### Permission

Provide the script with execute permission

```shell
$ chmod +x /app/pingc
```

### Run

The script accepts and expects the same argument(s) as [ping](https://linux.die.net/man/8/ping). Run the script with [`Bash`](https://github.com/python/cpython)

```shell
$ /app/pingc -c5 1.1.1.1
```

And have the ping output returned in a CSV format.

```
20210419024510,1618800310,1.1.1.1,3.62
20210419024511,1618800311,1.1.1.1,3.36
20210419024512,1618800312,1.1.1.1,2.84
20210419024513,1618800313,1.1.1.1,3.38
20210419024514,1618800314,1.1.1.1,3.38
```
