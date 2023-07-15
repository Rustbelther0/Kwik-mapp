https=require 'ssl.https'
socket=require 'socket'
dns=socket.dns
sb={}
function sb.subbuster(domain,lstpth,q)
--domain domain to bruteforce lstpth path to list of possible subdir default lst/sd20000.txt the rslts will be printed to ths screen unless q is spesified for quite 
local d=domain
local lst
if type(lstpth)=="string" then
lst=io.open(lstpth)
else
lst=io.open('sd20000.txt')
end
local rslt={}
for sub in lst:lines() do
	url=sub..'.'..d
	ip=dns.toip(url)
	if type(ip)=='string' then
		if q=='q' then
			rslt[url]=ip
		else
			rslt[url]=ip
			print(url,'......',ip)
		end
	end
	end
	return rslt
end
function sb.roboparse(url)
--[[this takes just the url we add the robots.txt for you  and should return a parsed robots.txt
wich hopefully included some useragents to use and the site map location.
This will save you time and resources its really the function to run first besides maybe startmap which when done should open a flat database to help ya keep things tighty]]
local rurl='https://'..url..'/robots.txt'
local robots, code, headers, status= https.request(rurl)
if type(robots)=='nil' then
	print('error returned nothing there os a problem somewhere')
else
	print(robots)
end
end
return sb
