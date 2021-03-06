SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done

export DOTFILES="$(dirname "$SOURCE")"
export DOTFILE_SCRIPTS="$DOTFILES/bash"

#INCLUDED SOURCES -------------------------------
source "${DOTFILE_SCRIPTS}/colors.sh"
source "${DOTFILE_SCRIPTS}/environment.sh"
source "${DOTFILE_SCRIPTS}/completion.sh"
source "${DOTFILE_SCRIPTS}/aliases.sh"
source "${DOTFILE_SCRIPTS}/prompt.sh"
