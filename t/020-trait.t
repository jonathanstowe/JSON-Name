#!raku

use v6;

use Test;

use JSON::Name;
use JSON::OptIn;

class TestName {
    has $.test-attribute is json-name('666weirdname');
}

ok my $attr = TestName.^attributes[0], "get the attribute";

does-ok $attr, JSON::Name::NamedAttribute, "it does the attribute role";
does-ok $attr, JSON::OptIn::OptedInAttribute, "it does the opt-in attribute role as well";
is $attr.json-name, '666weirdname', "got our name";


done-testing;
# vim: expandtab shiftwidth=4 ft=raku
