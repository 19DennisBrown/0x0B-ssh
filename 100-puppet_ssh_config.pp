rm -f /home/user/DENNISMALALA/Reduzer/SSH/.ssh/100-puppet_ssh_config.pp

cat <<'EOF' > /home/user/DENNISMALALA/Reduzer/SSH/100-puppet_ssh_config.pp
include stdlib

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}

file_line { 'Declare identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile',
}
EOF
