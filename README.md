## about
This is an open source, free (as in both freedom & beer) collection of jazz standards and other songs in leadsheet form.

The required tools to build this are **lilypond** and **rust**.

The goal is to support a few things for dynamic building:
* - [x] easy transposing for different transposing instruments via a CLI flag
* - [ ] filtering for specific songs to create a setlist
* - [ ] creating additional indices, for grouping by meter, tempo, composer etc.

## project structure

All finished song files are located in `songs`, work-in-progress songs are located in `staging`.

The song files and other book files are compiled to `book.ly` via the rust preprocessor, located in `templater`.

The rust preprocessor currently expects a songfile in this format:
```
front_matter: 'separated by ---'
---
% for harmonies
\chordMode {
}
---
% for voices
\relative c' {
}
---
% for lyrics
\lyricmode {
}
```
The front matter needs to be first, but the other blocks separated by `---` can be in any order. Only 1 block for chords is expected, but voices/lyrics can have any number of blocks (although this isn't really tested so far).

## compiling this book
The easiest method is with `just`, a modern alternative to `make`.

```
$ cd ./templater
$ just build-release

$ cd ..
$ just build
```

If you don't have (or don't want to use) `just`, you can run the commands from the justfile manually.

## contributing
Submit a pull request or open an issue.

## other projects & sources
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

## contributors
- Andrew Zah - <zah@andrewzah.com> (songs, code)

## LICENSE
[GNU Affero General Public License v3.0](./LICENSE)
