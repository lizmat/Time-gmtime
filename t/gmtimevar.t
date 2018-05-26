use v6.c;
use Test;
use Time::gmtime :FIELDS;

plan 18;

sub ok-gmtime($what) {
    ok 0 <= $tm_sec   <=  60, "is $what second in range";
    ok 0 <= $tm_min   <=  59, "is $what minute in range";
    ok 0 <= $tm_hour  <=  23, "is $what hour in range";
    ok 1 <= $tm_mday  <=  31, "is $what day in month in range";
    ok 0 <= $tm_mon   <=  11, "is $what month in range";
    ok 0 <= $tm_year        , "is $what year in range";
    ok 0 <= $tm_wday  <=   6, "is $what day in week in range";
    ok 1 <= $tm_yday  <= 366, "is $what day in year in range";
    ok 0 <= $tm_isdst <=   0, "is $what is daylight saving time in range";
}

gmtime;
ok-gmtime 'gmtime';
gmtime(1527362356);
ok-gmtime 'gmtime(1527362356)';

# vim: ft=perl6 expandtab sw=4
