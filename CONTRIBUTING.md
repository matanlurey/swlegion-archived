## Developing

TBD.

Make a change to `lib/src/model/*` or `lib/src/datbase/*`, generate files:

```bash
pub run build_runner build
```

## Testing

1. `dartfmt -w .`
2. `dartanalyzer --fatal-warnings --fatal-lints .`
3. `pub run test`
