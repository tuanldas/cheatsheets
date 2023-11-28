# Options

Options
------------

```bash
# Avoid overlay files
# (echo "hi" > foo)
set -o noclobber

# Used to exit upon error
# avoiding cascading errors
set -o errexit   

# Unveils hidden failures
set -o pipefail  

# Exposes unset variables
set -o nounset
```

Glob options
------------

```bash
# Non-matching globs are removed  
# ('*.foo' => '')
shopt -s nullglob   

# Non-matching globs throw errors
shopt -s failglob  

# Case insensitive globs
shopt -s nocaseglob 

# Wildcards match dotfiles 
# ("*.sh" => ".foo.sh")
shopt -s dotglob    

# Allow ** for recursive matches 
# ('lib/**/*.rb' => 'lib/a/b/c.rb')
shopt -s globstar   
```