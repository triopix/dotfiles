# !NOTE -> x86-64 Ubuntu Linux architecture-specific configuration

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration and environment setup

# Consolidated PATH adjustments for Ubuntu, prioritizing specific binaries
# - $HOME/.local/bin for user-installed Python packages (like pipx)
# - /home/linuxbrew/.linuxbrew/bin for Homebrew (Linuxbrew) on x86
# - /usr/local/bin for other locally installed binaries
# - Then append existing system PATH
export PATH="$HOME/.local/bin:/home/linuxbrew/.linuxbrew/bin:/usr/local/bin:$PATH"

# NVM (Node Version Manager) setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# JAVA_HOME environment variable for Ubuntu
# Uncomment and set the correct path if you need to use Java and it's not auto-configured
# export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64" # Example path for OpenJDK 17
# export PATH=$JAVA_HOME/bin:$PATH

# Other Optional Zsh settings (uncomment if desired)
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# zstyle ':omz:update' mode auto # Auto-update Oh My Zsh
# ENABLE_CORRECTION="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="yyyy-mm-dd" # Example history timestamp format

# Switch to Fish shell (ensure Fish is installed in the Codespace)
exec fish
