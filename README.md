# welcomeBach

Receive a list of Youtube links to recordings of a randomly selected piece by Bach.

The script uses [curl](https://curl.haxx.se) output parsed through an AWK filter to retrieve the links.

One can choose a link either through a simple bash prompt (default), using [fzf](https://https://github.com/junegunn/fzf) or [dmenu](https://https://tools.suckless.org/dmenu/).



## Installation

1. Clone the repository:

```bash
git clone https://github.com/marcwallach/welcomeBach.git
```

2. Check if the welcomeBach script is executable, if not, run:

```bash
chmod +x welcomeBach
```

3. Copy or move this directory to `.local/bin`, or somewhere in your `$PATH`

4. Finally, make sure to add a line to your startup scripts to run welcomeBach when starting a graphical session. Unless you're using `dmenu` to select a link, you'll need to run it from a terminal emulator.

   In the following examples, the syntax is for executing the script in [st](https://suckless.org/st) using [the Z shell](https://www.zsh.org). Make sure to change it to your terminal emulator of use and preferred shell.

      - If you're using a display manager like **lightdm** or **gdm**:

         Edit the `.desktop` file for your current desktop environment/window manager session in the directory your DM reads it from, appending the following after `Exec=`.

         ```bash
         st -e zsh -c 'welcomeBach && exec zsh'
         ```

      - If you're using **i3**, you may append the following it to your _config_ file:

         ```i3
         exec --no-startup-id st -e zsh -c 'welcomeBach && exec zsh'
         ```

      - You could also add it to your shell's **rc/profile** files.

      - ***If you're a Chad*** who uses **xinitrc**, just add `welcomeBach` to it, or to whatever your startup script is.


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Feel free to fork it!

## License
[GPLv3](https://gnu.org/licenses/gpl.html)


This script is a Bash adaptation of the original Python [welcomeBach](https://github.com/ofefo/welcomeBach), by [Fefo](https://ofefo.com.br) (go check out his work), which in turn is inspired by [Koan](https://github.com/a-moreira/Koan).
