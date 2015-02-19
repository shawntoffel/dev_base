exec { update:
	command => "/usr/bin/apt-get update"
}

package {"vim":
	ensure => present,
	require => Exec[update],
}

package {"git":
	ensure => present,
	require => Exec[update],
}

package {"xorg":
	ensure => present,
	require => Exec[update],
}

package {"i3":
	ensure => present,
	require => Exec[update],
}

package {"i3status":
	ensure => present,
	require => Exec[update],
}

package {"terminator":
	ensure => present,
	require => Exec[update],
}

package {"chromium":
	ensure => present,
	require => Exec[update],
}
