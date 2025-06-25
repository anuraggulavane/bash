#!/opt/homebrew/bin/bash

showuptime () {
    # Get the uptime part (pretty)
    up=$(uptime | awk -F'( up |, [0-9]+ user)' '{print $2}')

    # Get the boot time
    since=$(sysctl -n kern.boottime | awk -F'[=,]' '{print $2}' | xargs -I{} date -r {})

    cat << EOF

-----
this machine has been up for ${up}
it has been running since ${since}
-----
EOF
}

showuptime

