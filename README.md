pianobar-notify
===========

Pianobar desktop notifications on OSX.

---

## Installation

Clone this repository:

```bash
$ git clone https://github.com/cburmeister/pianobar-notify.git
```

Grab the `terminal-notifier` package:

```bash
$ brew install terminal-notifier
```

Link the file to your pianobar config directory: 

```bash
$ ln -s terminal-notify/notify.rb ~/.config/pianobar/notify.rb
```

Update your pianobar config file:

```bash
$ export PIANOBAR_CONFIG=~/.config/pianobar/config
$ echo "event_command = ~/.config/pianobar/notify.rb" >> $PIANOBAR_CONFIG
```
