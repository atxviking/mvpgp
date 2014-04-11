mvpgp
=====

Random script used to decrypt pgp files and move them to specified location. 

Script Setup
---------------

* Ensure Ruby 2.0.0 is installed. 
* Install gems

```ruby
bundle install
```

* Copy PGP public key(s) to the `keys` directory
* Set constants to desired values by modifying the `config/boot.rb` file.

```ruby
# Decrypt constants
  PGPFILE = "<path to file> + <PGP file name>"
  KEYFILE = "<key file>"
  PASSPHRASE = "<PASSPHRASE>"
# CopyFile constants
  DEST = "<destination dir for decrypted file>"
# Script constants
  OUTFILE = "out.txt"
```

Script Usage
---------------

Decrypt pgp file and copy results to a destination directory
* Make sure you are in this packages root directory
* Run `decrypt_and_move` script

```ruby
bundle exec ruby scripts/decrypt_and_move.rb
```
