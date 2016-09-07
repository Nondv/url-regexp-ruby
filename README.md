# Ruby URL Regexp

Just a simple regex for validating urls. It requires proto
(http/https). You may make it optional, but in this case it will be
matched on something like "lasfsdfas?fasfsdf" (e.g. 'localhost?some_id=1')

If you will use something like this, do not forget about
case-sensitivity and trailing whitespaces. I'd used something like
this:

```ruby
def url?(str)
  str.downcase.strip =~ REGEXP
end
```

## Tests

`ruby test.rb`

## License

Lol, seriously?

## Contribute

If you want to...
