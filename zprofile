# asdf setup
. $HOME/.asdf/asdf.sh

# GPG setup from joshclayton
if [ -n "$(pgrep gpg-agent)" ]; then
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --allow-preset-passphrase --write-env-file ~/.gnupg/.gpg-agent-info)
fi
