curl_security_check () {
    # 'tee' command could also have been used, instead of file descriptors.
    local tmpfile=$(mktemp)  # Create a temporal file in the default temporal folder of the system
    # Lets do some magic for the tmpfile to be removed when this script ends, even if it crashes
    local exec {FD_W}>"$tmpfile"  # Create file descriptor for writing, using first number available
    local exec {FD_cat}<"$tmpfile"  # Create file descriptor for reading, using first number available
    local exec {FD_grep}<"$tmpfile"  # Create file descriptor for reading, using first number available
    rm "$tmpfile"  # Delete the file, but file descriptors keep available for this script

    ls $1
    curl -H "Accept: text/plain" https://security.sensiolabs.org/check_lock -F lock=@$1 >&$FD_W
    # exec $FD_W>&- # Closes file descriptor cannot be done
    cat <&$FD_cat
    grep --quiet "No packages have known vulnerabilities." <&$FD_grep
  }
