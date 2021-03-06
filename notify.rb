#!/usr/bin/ruby

trigger = ARGV.shift

if trigger == 'songstart'
    songinfo = {}
    STDIN.each_line { |line| songinfo.store(*line.chomp.split('=', 2))}
    `terminal-notifier -message "Artist: #{songinfo['artist']}\nAlbum: #{songinfo['album']}" -title "#{songinfo['title']}" -group pianobar -remove`
end
