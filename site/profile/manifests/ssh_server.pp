class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@puppet.local':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPlxWFdxo3dqQPb3uboQ7tDyXXElI8e4E5niWWian4rEfz178imuaUSQfC9bteaSqvXQs0v39U8Y0LFg52hphPideykaWVXpJS9neOVV29njRAJ+RE0sud3DCWQbaPdVSwUMB39JAYwT8C481sviRc9Rkm5ZosR7HW8kiPaIZR1MXcrJy4DSKQF8meiBEYsnP5Fbcgy6Imuc+sjTqQDbnDG9KJSlNXHd+OW2QaJQc+cEou06cS4yQm3bkUd8KOneypRENZ35B2Ye1mL3K0vlciiCg98B93B/FS4oiRa0p+0CuGgmH7gjvG5hEUfH0kh7qp/RFoCpV11QnKJCSx4lHd',
	}  
}
