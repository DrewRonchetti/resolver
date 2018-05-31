# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include resolver
class resolver (
  $nameservers = ["",""],
) {
  file { '/etc/resolv.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('resolver/resolv.conf.erb'),
  }
}
