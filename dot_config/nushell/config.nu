$env.config.buffer_editor = "nvim"

use ($nu.default-config-dir | path join mise.nu)
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

alias cat = bat

source ~/.zoxide.nu
