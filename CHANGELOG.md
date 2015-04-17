# Changelog

### Multiple Edition Support

The cookbook now supports multiple editions.
Set the `[:neo4j][:server][:edition]` attribute to provision an Enterprise
edition node. See the docs for more information about Enterprise-specific
features such as HA.

Contributed by Alex Paul.

### Updated Default Version Update '2.2.1'

Contributed by Kelsey Mok.

### Host Address Configuration Nesting (2014-02-25, 137936884e)

Host address configuration is no longer nested
under under `http`.

GH issue: [#17](https://github.com/michaelklishin/neo4j-server-chef-cookbook/issues/17)

Contributed by Greg Signal.
