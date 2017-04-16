# ruby-rails-tools-install

This is a Bash script written for and used on Ubuntu (16.04.x).

This script downloads and installs Ruby, Rails, and the minimum set of tools commonly used by Rails programmers.  The installation process compiles Ruby and the gems, so it depends on the package "build-essential" having been previously installed, (do "sudo apt-get install build-essential" if necessary).

It must be executed with elevated user permissions, (sudo or as root).

Usage :
  sudo ./ruby-rails-tools-install.sh

After the script finishes, enter the following commands and confirm the results :

    $ ruby --version
        ruby 2.3.4p301

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

