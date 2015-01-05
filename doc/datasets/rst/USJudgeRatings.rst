+--------------------------------------+--------------------------------------+
| USJudgeRatings                       |
| R Documentation                      |
+--------------------------------------+--------------------------------------+

Lawyers' Ratings of State Judges in the US Superior Court
---------------------------------------------------------

Description
~~~~~~~~~~~

Lawyers' ratings of state judges in the US Superior Court.

Usage
~~~~~

::

    USJudgeRatings

Format
~~~~~~

A data frame containing 43 observations on 12 numeric variables.

+--------------------------+--------------------------+--------------------------+
| [,1]                     | [,2]                     | [,3]                     |
| CONT                     | INTG                     | DMNR                     |
| Number of contacts of    | Judicial integrity.      | Demeanor.                |
| lawyer with judge.       |                          |                          |
+--------------------------+--------------------------+--------------------------+

Source
~~~~~~

New Haven Register, 14 January, 1977 (from John Hartigan).

Examples
~~~~~~~~

::

    require(graphics)
    pairs(USJudgeRatings, main = "USJudgeRatings data")

