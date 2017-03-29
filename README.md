# ruby-rails-tools-install

This is a Bash script written for and used on Ubuntu (16.0).

This script will download and install Ruby, Rails, and the minimum set of tools commonly used by Rails programmers.

It must be executed with elevated user permissions, (sudo or as root).

Usage :
  sudo ./ruby-rails-tools-install.sh

After the script finishes, enter the following commands and confirm the results :

    $ ruby --version
        ruby 2.4.1p111 (2017-03-22 revision 58053)

    $ rails --version
        Rails 5.0.2

    $ gem --version
        2.6.11

    $ bundler --version
        Bundler version 1.14.6

    $ nodejs --version
        v4.2.6

    $ git --version
        git version 2.7.4

    $ gem list sqlite3
        *** LOCAL GEMS ***
        sqlite3 (1.3.13)

