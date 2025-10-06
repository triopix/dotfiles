# !NOTE -> x86-64 ubuntu-linux architecture-specific configuration

# Function to define your custom prompt
function fish_prompt
    # Set the color for the username@hostname part
    set_color green
    echo -n (whoami)@ (hostname)
    set_color normal

    echo -n " "

    # Set the color for the path
    set_color blue
    # Use pwd for the full current working directory path
    echo -n (pwd)
    set_color normal

    echo -n "> "
end

# Remove the welcome greeting message
set -U fish_greeting ""

# Add any other custom aliases (abbreviations), functions, or environment variables here
# Example alias:
# abbr ll 'ls -alF'
#
# Example environment variable for Ubuntu (e.g., a specific tool path if needed)
# set -x PATH $PATH /opt/my_custom_tool/bin