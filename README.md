### about
This is an open source, free (as in both freedom & beer) collection of jazz standards and other songs.

The goal is to require as little outside dependencies as possible,
rather using [Lilypond's](http://lilypond.org/) built-in [GNU Guile](https://www.gnu.org/software/guile/).

### compiling this book
#### linux / openbsd / macosx
The easiest method is with `just`, a modern alternative to `make`.

```
$ just build
```

If you don't have (or don't want to use) `just`, you can run the commands manually:

```
$ lilypond \
    -dpoint-and-click \
    -ddelete-intermediate-files \
    --include=./includes/ \
    --include=./songs/ \
    --pdf \
    book.ly
```

#### windows
I don't use windows, so I don't know. I would install Lilypond and point it to `book.ly`.

### contributing
Submit a pull request or open an issue.

### roadmap
- [x] typeset some songs with varied forms and structure
- [ ] make a song template
- [ ] investigate if we should stick with pure lilypond or embed lilypond files within a LaTeX file
- [ ] use bash+guile to generate the `book.ly` programmatically via songs in `songs/`
- [ ] make song metadata parseable either via variables or separate files
- [ ] add metadata for definitive versions to listen to (with QR codes / links)
- [ ] generate multiple TOCs: by song name, by composer, by meter, etc
- [ ] add chord symbol explanation page for quick reference
- [ ] add foreword explaining about this book, and the software used to make it

### other projects & sources
These projects either provided examples or are just similar in nature.

- [veltzer/openbook](https://github.com/veltzer/openbook) by [@veltzer - Mark Veltzer](https://github.com/veltzer)
- [nii236/videogame-realbook](https://github.com/nii236/videogame-realbook)

- [lilypond manuals](https://lilypond.org/doc/v2.21/Documentation/web/manuals.html)
- [lilypond-user archives](https://lists.gnu.org/archive/html/lilypond-user)
- [lilypond snippets](http://lilypond.org/snippets.html)
- [lilypond snippet repository](https://lsr.di.unimi.it/LSR/Search)

- The Real Book (5th & 6th Ed.) by Hal Leonard
- The Real Vocal Bbook (I & II) by Hal Leonard
- The Charlie Parker Omnibook

### contributors
- Andrew Zah - <zah@andrewzah.com>

### LICENSE
[GNU Affero General Public License v3.0](./LICENSE)
