### Default Q&A Card Markup

`#question` => question tag
`#answer` => answer tag
#### not implemented
`#tags` => tags
`$refs` => reference tag (links)

## pandoc-markdown-css-theme
* <https://jez.io/pandoc-markdown-css-theme/>
* <https://github.com/jez/pandoc-markdown-css-theme>

## The idea of current flow
1. Create a new card or with a quiz (one Anki cards per .md file)
2. Run `make && make` (will be fixed soon) to re-generate/update html output in `docs/` folder
3. Check what output files were updated and manually update data in Anki (should be improved)

## How it works
All md files placed to `decks/` folder are recursively scanned, split by `awk` processed by `pandoc`.
It converts split markdown cards to htlm5 format using specified CSS, which can be directly used 
by Anki.

## Development

```shell
## clean all generated output
make clean
## generate output
make && make 
## run web-server
make watch
```
### Room for improvements
- to properly generate html output make should be called twice, because it doesn't see intermediate .md files
- AnkiConnect integration could be implemented (create/update a card)
- card metadata could be added as tags

More instructions in the [Usage][Usage] section of the website above.

[Usage]: https://jez.io/pandoc-markdown-css-theme/#usage

## Other
[Pandoc available syntax highlighters](https://stackoverflow.com/questions/30880200/pandoc-what-are-the-available-syntax-highlighters)