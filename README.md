# https-security-checker
Use https to connect to security.sensiolabs.org with curl

## Usage
- wget https://github.com/travis-util/https-security-checker/archive/master.zip --output-document=- | jar xvf /dev/stdin
- . https-security-checker-master/init-source.bash
- curl_security_check composer.lock

## Corrected bug
* Seems not to work anymore from Travis since version 5.0 of sensiolabs/security-checker (2018-11)
  * The message returned from https://security.sensiolabs.org/check_lock had changed
  * Updated the message in scripts

## Documentation references
* [*15 Linux lsof Command Examples (Identify Open Files)*](https://www.thegeekstuff.com/2012/08/lsof-command-examples)
* [*Bash One-Liners Explained, Part III: All about redirections*](http://www.catonmat.net/blog/bash-one-liners-explained-part-three/)
* [*Dash as /bin/sh*](https://wiki.ubuntu.com/DashAsBinSh)
* [*Closing a file descriptor, >&- vs <&-*](https://unix.stackexchange.com/questions/131801/closing-a-file-descriptor-vs)
* [*difference between “function foo() {}” and “foo() {}”*](https://unix.stackexchange.com/questions/73750/difference-between-function-foo-and-foo)
* [*Escaping * with Regular Expressions and Grep*](https://unix.stackexchange.com/questions/87108/escaping-with-regular-expressions-and-grep)
* [*Functions! Divide and Conquer*](https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php)
* [*How can I send stdout to multiple commands?*](https://unix.stackexchange.com/questions/28503/how-can-i-send-stdout-to-multiple-commands)
* [*How create a temporary file in shell script?*](https://unix.stackexchange.com/questions/181937/how-create-a-temporary-file-in-shell-script)
* [*How to escape indicator characters (i.e. : or - ) in YAML*](https://stackoverflow.com/questions/11301650/how-to-escape-indicator-characters-i-e-or-in-yaml)
* [*In Bash, how to find the lowest-numbered unused file descriptor?*](https://stackoverflow.com/questions/8297415/in-bash-how-to-find-the-lowest-numbered-unused-file-descriptor)
* [*2. Shell Command Language: 2.7 Redirection*](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_07)
* [*sh I/O redirection short reference*](https://brendanzagaeski.appspot.com/000b.html)
* [*What are the uses of the exec command in shell scripts?*](https://stackoverflow.com/questions/18351198/what-are-the-uses-of-the-exec-command-in-shell-scripts)
* [*What does 'pee' in moreutils do?*](https://serverfault.com/questions/96245/linux-debian-what-does-pee-in-moreutils-do)
