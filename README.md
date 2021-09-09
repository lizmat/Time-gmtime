[![Actions Status](https://github.com/lizmat/Time-gmtime/workflows/test/badge.svg)](https://github.com/lizmat/Time-gmtime/actions)

NAME
====

Raku port of Perl's Time::gmtime module

SYNOPSIS
========

    use Time::gmtime;
    $gm = gmtime;
    printf "The day in Greenwich is %s\n", 
       <Sun Mon Tue Wed Thu Fri Sat Sun>[ $gm.wday ];
     
    use Time::gmtime :FIELDS;
    gmtime;
    printf "The day in Greenwich is %s\n", 
       <Sun Mon Tue Wed Thu Fri Sat Sun>[ $tm_wday ];
     
    $now = gmctime();
     
    use Time::gmtime;
    $date_string = gmctime($file.IO.modified);

DESCRIPTION
===========

This module tries to mimic the behaviour of Perl's `Time::gmtime` module as closely as possible in the Raku Programming Language.

This module's default exports a `gmtime` and `gmctime` functions. The `gmtime` function returns a "Time::gmtime" object. This object has methods that return the similarly named structure field name from the C's tm structure from time.h; namely sec, min, hour, mday, mon, year, wday, yday, and isdst.

You may also import all the structure fields directly into your namespace as regular variables using the :FIELDS import tag. (Note that this still exports the functions.) Access these fields as variables named with a preceding tm_. Thus, `$group_obj.year` corresponds to `$tm_year` if you import the fields.

The `gmctime` function provides a way of getting at the scalar sense of the `gmtime` function in Perl.

PORTING CAVEATS
===============

This module depends on the availability of POSIX semantics. This is generally not available on Windows, so this module will probably not work on Windows.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Time-gmtime . Comments and Pull Requests are welcome.

COPYRIGHT AND LICENSE
=====================

Copyright 2018, 2019, 2020, 2021 Elizabeth Mattijsen

Re-imagined from Perl as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

