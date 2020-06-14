# welcomeBach

Receive a list of Youtube links to recordings of a randomly selected piece by Bach on startup. 

Three versions are currently under development: one that uses [curl](https://curl.haxx.se) to retrieve the links from the web and one that uses the [lynx](https://invisible-island.net/lynx/) browser to do it. Both have two implementations, one that runs on a terminal window, and another that uses [dmenu](https://tools.suckless.org/dmenu/) for choosing the link.

## Installation

1. Clone the repository:

`git clone https://github.com/marcwallach/welcomeBach.git`

2. Check if the welcomeBach script is executable, if not, run:

```bash
chmod +x welcomeBach
```

3. Copy both the script and the bwv.txt file to the `.local/bin` directory

4. Finally, make sure to add a line for executing the script wherever your startup scripts are set. 

   In the following examples, the syntax is for executing the script in [st](https://suckless.org/st) using [the Z shell](https://www.zsh.org). Make sure to change it to your terminal emulator of use and preferred shell.

      - If you're using a display manager like **lightdm** or **gdm3**: 
   
         Edit the .desktop file for your current desktop environment/window manager session in the directory your DM reads it from, appending the following after `Exec=`.

         ```bash
         st -e zsh -c 'welcomeBach && exec zsh'
         ```

      - If you're using **i3**, you may append the following it to your _config_ file:

         ```i3
         exec --no-startup-id st -e zsh -c 'welcomeBach && exec zsh'
         ```


      - ***If you're a Chad*** who uses **xinitrc**, just add `welcomeBach` to it, or to whatever your startup script is, wherever it may be, you know what to do.


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Feel free to fork it!

## License
[GPLv3](https://gnu.org/licenses/gpl.html)


This script is a Bash adaptation of the original Python [welcomeBach](https://github.com/ofefo/welcomeBach) by [Fefo](https://ofefo.com.br) (go check out his work), with in turn is inspired by [Koan](https://github.com/a-moreira/Koan).
