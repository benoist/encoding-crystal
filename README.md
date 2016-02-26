# encoding

A library for encoding integers

Currently implemented is

* Simple8b

Roadmap

* ZigZag

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  encoding:
    github: benoist/encoding
```


## Usage

### Encoding
```crystal
require "encoding/simple8b"

io = MemoryIO.new
encoder = Simple8b::Encoder.new(io)

# just 1 unsigned int
encoder.write(1_u64)

# a slice of unsigned ints
encoder.write(Slice(UInt64).new(100, 1_u64)

# make sure its all flushed
encoder.flush

io.to_slice
```

### Decoding

```crystal
io = MemoryIO.new
io.write_bytes(3458764513820540927_u64, IO::ByteFormat::BigEndian)
io.rewind
decoder = Simple8b::Decoder.new(io)

slice = decoder.read(Slice(UInt64).new(240))

puts slice.size # => 60 it strips the slice to the available number of integers
```

### Benchmarks

Plain decode
```
increasing integers = 10_000_000, 00:00:00.1824970
small integers = 100_000_000, 00:00:02.1267900
Summary items decoded: 110_000_000
Summary time: 00:00:02.3099370
```

Simple8b decode
```
increasing integers = 10_000_000, 00:00:00.2196710
small integers = 100_000_000, 00:00:02.0505300
Summary items decoded: 110_000_000
Summary time: 00:00:02.2708750
```

Plain encode

```
increasing integers = 76 Mb, 00:00:00.1319200
small integers = 762 Mb, 00:00:01.2899720
Summary packed size: 839 Mb
Summary time: 00:00:01.4224870
```

Simple8b encode
```
increasing integers = 12 Mb, 00:00:00.2550130
small integers = 28 Mb, 00:00:01.7358000
Summary packed size: 40 Mb
Summary time: 00:00:01.9913300
```

For these use cases about 20x smaller data with a bit of encoding overhead

## Contributing

1. Fork it ( https://github.com/[your-github-name]/encoding/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [benoist](https://github.com/benoist) Benoist Claassen - creator, maintainer
