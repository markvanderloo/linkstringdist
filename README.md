# linkstringdist

Minimal example of an `R` package LinkingTo the
[stringdist](https://cran.r-project.org/?package=stringdist) `C` api.



#### Notes.

This package uses a function from the `stringdist` `C` API, which is called
from pure `C` code. A more interesting and `C++` based example can be found in
the [refinr](https://github.com/ChrisMuir/refinr) package.

A full API description can be found by typing

```r
?stringdist::stringdist_api
```
in the `R` console.


Don't forget to set `@useDynLib` via Roxygen documentation. Alternatively set
`useDynLib()` manually in the `NAMESPACE` file.


Adding `stringdist` to the `Imports` fied of the `DESCRIPTION` file is not
enough. You also need to add an `@import stringdist` Roxygen field or an
`import(stringdist)` entry manually in the `NAMESPACE` file to ensure that
`stringdist` is loaded and the shared object files are available. Alternatively
an `@ImportFrom` or the `NAMESPACE` equivalent will work as well.


This package also registers its single `C` routine for export. This is only
necessary to avoid a `NOTE` when preparing a package for CRAN. I.E. the note
only pops up when checking the package with the `--as-cran` flag.  So it is not
necessary to add a file like
[R_RegisterNativeRoutines.c](./src/R_RegisterNativeRoutines.c) for local
packages.



Code for this package was developed using [VIM](https://www.vim.org).

