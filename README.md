mvpgp
=====

Random script used to decrypt pgp files and move them to specified location. 

Getting Started
---------------

* Ensure Ruby 2.0.0 is installed. 
* Install gems

```ruby
bundle install
```

* Set constants to desired values by modifying the `scripts/decrypt_and_move.rb` file.

```ruby
# Decrypt constants
  PGPFILE = "<dir where PGP file lives"
  KEYFILE = "keys/<key file>"
# CopyFile constants
  DEST = "<destination dir for decrypted file"
# Script constants
  OUTFILE = "out.txt"
```

Usage
---------------

Decrypt pgp file and copy results to a destination directory
* Make sure you are in this packages root directory
* Copy PGP public key(s) to the `keys` directory
* Run `decrypt_and_move` script

```ruby
bundle exec ruby scripts/decrypt_and_move.rb
```
