# tmetricr - a wrapper for the TMetric REST API

`TMetric` is a time tracking cloud based software. It is valuable for use in businesses where time needs to be tracked across many different clients, projects and consultants at various different rates and billing models.

The `TMetric` team has made available a `REST API` which allows automated access to much of the data associated with an individual's or organization's accounts.

This package aims to provide a wrapper for the `TMetric` `REST API` within `R` so that users who prefer to perform their analysis and reporting inside of `R` can utilize the `TMetric` `REST API` in a streamlined fashion.

Currently, `tmetricr` supports the following end points:

- `reports/detailed/csv` (`GET` only)

More information on the different queries are available on the `TMetric` [Swagger UI homepage](https://app.tmetric.com/help/index)

Over time, more endpoints will be added. This package is a work in progress.
