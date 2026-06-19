if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting

alias ls="/var/home/anirudh/.bin/eza -l --icons"
#alias wifi="sudo iw dev wlo1 scan > /dev/zero"
alias q="exit"
# alias mpd="toolbox run -c fedora mpd"
alias c="clear"
alias task="toolbox run -c fedora task"
alias fzf="toolbox run -c fedora fzf"
alias wezterm="flatpak run org.wezfurlong.wezterm"
export EDITOR='nvim'
