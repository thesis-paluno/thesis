# LaTeX Thesis Template

This is a LaTeX template to write a thesis.

## Install
Install TeX Live [TeX Live](http://www.tug.org/texlive/).

## Compile to PDF ##
### ltx (recommended) ###

* Install [Ruby](https://www.ruby-lang.org), [RVM](https://rvm.io) and
[Bundler](https://bundler.io)
* Run `bundle install` to install [ltx](https://github.com/zaidan/ltx).

This gem provides the `ltx` command. See the [ltx
documentation](https://github.com/zaidan/ltx) for usage.


### latexmk ###
Use the following command to compile the project with
[latexmk](http://mg.readthedocs.io/latexmk.html) and
[pdflatex](http://www.tug.org/applications/pdftex/):

```
#!bash

latexmk -cd -f -jobname=output -auxdir="OUTDIR" -outdir="OUTDIR" -pdf -e "$pdflatex='pdflatex -synctex=1 -interaction=batchmode %O %S'" ".../main.tex"
```

It is recommended to set `OUTDIR` to a temporary subdirectory (e.g. `tmp`).
Using a temporary directory is not required, but then all build artifacts will
be created in your project root.  You can set the document file name prefix via
`-jobname=`. Replace `$pdflatex='pdflatex` with `$pdflatex='lualatex` if you
use [LuaTeX](http://www.luatex.org).  This and more is what
[ltx](https://github.com/zaidan/ltx) allows you to configure via the
`project.yml`.

## Editor

There are many tools and editors you can use. Here is a small collection:

# [Vim](http://www.vim.org)
There is the `vim-latex` plugin for [Vim](http://www.vim.org):
```
#!vimrc

Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'

```

Combine this with [evince](https://wiki.gnome.org/Apps/Evince) (supports
auto-reloading) and a tiling window manager like [xmoand](http://xmonad.org/),
[i3](https://i3wm.org) or [Sway](http://swaywm.org) and you have a great setup.
   
You can use [guard](http://guardgem.org) or any other file change watcher for
auto-compiling.

# [TeXstudio](http://www.texstudio.org)
Set the `Default Compiler` to `Latexmk` under `Build` settings.

## Compile to Temporary Directory
You can also compile to a temporary subdirectory:

* Change the `latex-mk` command in `Options->Configure TeXstudio...->Commands`
to:

```
latexmk -cd -f -jobname=% -auxdir="tmp" -outdir="tmp" -pdf -e "$pdflatex='pdflatex -synctex=1 -interaction=batchmode %%O %%S'" "%.tex"
```

If you use an external PDF-Viewer, adjust the path under `External PDF-Viewer` to `outdir` (`tmp/`).

For [evince](https://wiki.gnome.org/Apps/Evince) under Linux set the `External PDF-Viewer` to:

```
evince tmp/%.pdf > /dev/null
```

For Acrobat Reader under Windows (you may have to fix the path) set the `External PDF-Viewer` to:

```
"C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe" "tmp\?m.pdf" 
```


Without changing the following the internal PDF-Viewer will not find the PDF and log files:

*  Activate the `Advanced Options` by checking the checkbox `Show Advanced Options`
*  Go to `Additional Search Paths` and add `tmp` for `Log File` and `PDF File`

## Credits

 * [Firas Zaidan](https://github.com/zaidan)

## License

See `LICENSE` file.

