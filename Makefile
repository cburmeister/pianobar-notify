PREFIX=/Users/$(USER)/.config/pianobar

install:
	cp -f notify.rb $(PREFIX)/notify.rb
	echo "event_command = $(PREFIX)/notify.rb" >> $(PREFIX)/config 

uninstall:
	rm -f $(PREFIX)/notify.rb
	sed "/event_command/d" $(PREFIX)/config 

.PHONY: install uninstall
