export DOT=$HOME/.dot

typeset -U env_files
env_files=($DOT/env/**/*)

for file in ${(M)env_files:#*/*.zsh}; do
  source $file
done

for file in ${(M)env_files:#*/*.path}; do
  source $file
done

for file in ${(M)env_files:#*/*.env}; do
  source $file
done

unset env_files
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/gettext/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rcreasey/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/rcreasey/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rcreasey/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/rcreasey/google-cloud-sdk/completion.zsh.inc'; fi
