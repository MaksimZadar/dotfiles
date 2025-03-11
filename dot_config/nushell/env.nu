$env.path ++= ["~/.cargo/bin"]
$env.config.shell_integration.osc133 = false

let mise_path = $nu.default-config-dir | path join mise.nu
^mise activate nu | save $mise_path --force

^ssh-agent -c
    | lines
    | first 2
    | parse "setenv {name} {value};"
    | transpose -r
    | into record
    | load-env
