class minecraft {
  file {'/opt/minecraft':
   ensure => directory,
  }
  file {'/opt/mincraft/mincraft_server.jar':
   ensure => file,
   source => 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar',
   }
   package{'java':
     ensure=> present,
    }
    file {'/opt/minecraft/eula.txt':
      ensure => file,
      conent => 'eula=true',
    }
   file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }

}
