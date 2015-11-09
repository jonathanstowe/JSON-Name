use v6;

module JSON::Name:ver<v0.0.1>:auth<github:jonathanstowe> {
    role NamedAttribute {
        has Str $.json-name is rw;
    }

    multi sub trait_mod:<is>(Attribute $a, Str :$json-name!) is export(:DEFAULT){
        $a does NamedAttribute;
        $a.json-name = $json-name;
    }

}
# vim: expandtab shiftwidth=4 ft=perl6
