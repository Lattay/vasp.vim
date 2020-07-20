# VASP.vim

Syntax highlighting for VASP's file.

Now supporting INCAR only.

Features:
- Recognise all INCAR "tags" (as of 2020 Jul 20)
- highlight in red when a tag is not recognised
- support most constant commonly used in INCARs
- support bash/python style and Fortrand style comments

## How to install

Easy way:
Use [vim-plug](https://github.com/junegunn/vim-plug) or your favorite plugin manager and add the following to your plugin section:
```vim
Plug 'Lattay/vasp.vim'
```

Handmade way:
Copy the **content** of this project in your `.vim` or `.config/nvim`.
You should then have something like that:
```
.vim
\-> ftdetect
    \-> INCAR.vim
\-> syntax
    \-> INCAR.vim
```

## How to use

You should have syntax highlighting and plugin detection enabled.
```vim
filetype plugin on
syntax on
```

Then open an INCAR like usual.
If highlighting does not work properly try the command `:setf INCAR`.
If it fixes it, it means the file type is not properly detected for some reason.

If you want to use highlighting on a file not named `INCAR` the command `:setf INCAR` will enable it.
