+--------------------------------------+--------------------------------------+
| mtcars                               |
| R Documentation                      |
+--------------------------------------+--------------------------------------+

Motor Trend Car Road Tests
--------------------------

Description
~~~~~~~~~~~

The data was extracted from the 1974 *Motor Trend* US magazine, and
comprises fuel consumption and 10 aspects of automobile design and
performance for 32 automobiles (1973–74 models).

Usage
~~~~~

::

    mtcars

Format
~~~~~~

A data frame with 32 observations on 11 variables.

+--------------------------+--------------------------+--------------------------+
| [, 1]                    | [, 2]                    | [, 3]                    |
| mpg                      | cyl                      | disp                     |
| Miles/(US) gallon        | Number of cylinders      | Displacement (cu.in.)    |
+--------------------------+--------------------------+--------------------------+

Source
~~~~~~

Henderson and Velleman (1981), Building multiple regression models
interactively. *Biometrics*, **37**, 391–411.

Examples
~~~~~~~~

::

    require(graphics)
    pairs(mtcars, main = "mtcars data")
    coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
           panel = panel.smooth, rows = 1)

