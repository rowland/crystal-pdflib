# crystal-pdflib

Crystal bindings for PDFlib.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     crystal-pdflib:
       github: rowland/crystal-pdflib
   ```

2. Run `shards install`

## Usage

```crystal
require "crystal-pdflib"
```

This library is intended to be wrapped by higher-level libraries, so
should remain simply C bindings without adding additional logic.

The module is called `PDFlib`, without any "crystal" prefix.

## Development

Add additional APIs from PDFlib as needed.

## Contributing

1. Fork it (<https://github.com/rowland/crystal-pdflib/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Brent Rowland](https://github.com/rowland) - creator and maintainer
