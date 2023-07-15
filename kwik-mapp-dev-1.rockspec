package = "kwik-mapp"
version = "dev-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   summery = 'a module providibg the utilitys for a site maping program',
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {kwik = 'src/kwik.lua',
[kwik.map] = 'src/kwik-mapp/map.lua',
	[kwik.db] = 'src/kwik-mapp/db.lua'
	},
   dependencies={
      'lua=5.1',
      'luasocket=<3.1.0-1',
      'luasec=>1.3.1-1'

}      
}
