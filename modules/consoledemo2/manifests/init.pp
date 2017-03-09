# this is to test the console demo in conjunction with site.pp
class consoledemo2 {
#( $key1 = "class declaration" )
	notify {"key1 is from ${key1}" :}
        notify {"key2 is from ${key2}" :}
        notify {"key3 is from ${key3}" :}

}
