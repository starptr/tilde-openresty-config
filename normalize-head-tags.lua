local slug = ngx.var.slug
local path = '/home/starptr/src/tilde-homepage/root/' .. slug

local possible_files = {}

ngx.log(ngx.DEBUG, "HELLO??")
ngx.log(ngx.DEBUG, slug)

if string.sub(path, -1) == "/" then
	table.insert(possible_files, path .. "index.html")
end
if string.sub(path, -5) ~= ".html" then



local res = ngx.location.capture(slug)

ngx.say(res.body)
