# Networking: Ping Output to Comma Separated Values (CSV) at Runtime

This Bash script may be executed on a terminal or by a task scheduler such as [cron](https://crontab.guru/) and it does the following:

1. Execute [ping](https://linux.die.net/man/8/ping) with the rest of the arguments supplied.
2. Translate the ping output into a computable Comma Separated Values (CSV) format with:
   1. The date and time in YYYYMMDDHHMMSS e.g. 20210419024510,
   2. The number of seconds since the [epoch](https://linux.die.net/man/1/date) that is since 1970-01-01 00:00:00 UTC,
   3. The destination IP address, and
   4. The corresponding Round Trip Time (RTT)

A detailed walk-though is available [here](https://kurtcms.org/networking-ping-output-to-comma-separated-values-csv-at-runtime/).

![alt text](https://kurtcms.org/git/pingc/pingc-screenshot.png)
