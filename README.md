# welcomeBach

Receive a list of Youtube links to recordings of a randomly selected piece by Bach on startup.
Three versions are currently under development: one that uses _curl_ to retrieve the links from the web and one that uses the _lynx_ browser to do it. Both have two implementations, one that runs on a terminal window, and another that uses _dmenu_ for choosing the link.


### Installation

1. Clone the repository:

`git clone https://github.com/marcwallach/welcomeBach.git`


2. Check if the welcomeBach script is executable, if not, run:

`chmod +x welcomeBach`

3. Move both the script and the *bwv.txt* file to the _.local/bin directory_

4. Finally, make sure to add a line for executing the script wherever your startup scripts are set. In the following examples, the syntax is for executing the scriptin st using zsh. Make sure to change it to your terminal emulator of use and preferred shell. Here are two examples:
	1. If you're using a display manager like lightdm or gdm3:
	Edit the _.desktop_ file for your current desktop environment/window manager session in the directory your DM reads it from, appending the following after _Exec=_.

`st -e zsh -c 'welcomeBach && exec zsh'`

	2. If you're using i3, you may append the following it to your _config_ file:

`exec --no-startup-id st -e zsh -c 'welcomeBach && exec zsh'`

	3. If you're a Chad who uses _.xinitrc_, just add *welcomeBach* to it, or to wherever your startup script is, you know what to do.

Inspired by [welcomeKoans].

[welcomeKoans]: https://github.com/a-moreira/welcomeKoans
