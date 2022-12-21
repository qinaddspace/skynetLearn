local skynet = require "skynet"
local sprotoloader = require "sprotoloader"
require "src.app.admin.init"

local max_client = 64

skynet.start(function()
	skynet.error("Server start")
	skynet.uniqueservice("protoloader")
	if not skynet.getenv "daemon" then
		local console = skynet.newservice("console")
	end

	skynet.exit()
end)
