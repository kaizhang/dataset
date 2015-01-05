+--------------------------------------+--------------------------------------+
| rock                                 |
| R Documentation                      |
+--------------------------------------+--------------------------------------+

Measurements on Petroleum Rock Samples
--------------------------------------

Description
~~~~~~~~~~~

Measurements on 48 rock samples from a petroleum reservoir.

Usage
~~~~~

::

    rock

Format
~~~~~~

A data frame with 48 rows and 4 numeric columns.

+--------------------------+--------------------------+--------------------------+
| [,1]                     | [,2]                     | [,3]                     |
| area                     | peri                     | shape                    |
| area of pores space, in  | perimeter in pixels      | perimeter/sqrt(area)     |
| pixels out of 256 by 256 |                          |                          |
+--------------------------+--------------------------+--------------------------+

Details
~~~~~~~

Twelve core samples from petroleum reservoirs were sampled by 4
cross-sections. Each core sample was measured for permeability, and each
cross-section has total area of pores, total perimeter of pores, and
shape.

Source
~~~~~~

Data from BP Research, image analysis by Ronit Katz, U. Oxford.
