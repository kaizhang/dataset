+--------------------------------------+--------------------------------------+
| USArrests                            |
| R Documentation                      |
+--------------------------------------+--------------------------------------+

Violent Crime Rates by US State
-------------------------------

Description
~~~~~~~~~~~

This data set contains statistics, in arrests per 100,000 residents for
assault, murder, and rape in each of the 50 US states in 1973. Also
given is the percent of the population living in urban areas.

Usage
~~~~~

::

    USArrests

Format
~~~~~~

A data frame with 50 observations on 4 variables.

+--------------------+--------------------+--------------------+--------------------+
| [,1]               | [,2]               | [,3]               | [,4]               |
| Murder             | Assault            | UrbanPop           | Rape               |
| numeric            | numeric            | numeric            | numeric            |
| Murder arrests     | Assault arrests    | Percent urban      | Rape arrests (per  |
| (per 100,000)      | (per 100,000)      | population         | 100,000)           |
+--------------------+--------------------+--------------------+--------------------+

Source
~~~~~~

World Almanac and Book of facts 1975. (Crime rates).

Statistical Abstracts of the United States 1975. (Urban rates).

References
~~~~~~~~~~

McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

See Also
~~~~~~~~

The ``state`` data sets.

Examples
~~~~~~~~

::

    require(graphics)
    pairs(USArrests, panel = panel.smooth, main = "USArrests data")

