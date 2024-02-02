#This is very simple with a lot of ways to break but it works for me thus far.
function source_env
	for i in (cat $argv)
		set arr (echo $i |tr = \n)
  		set -gx $arr[1] $arr[2]
	end
end