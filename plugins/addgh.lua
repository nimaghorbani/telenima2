do
	local function callback(extra, success, result)
		vardump(success)
		cardump(result)
	end
	function run(msg, matches)
		ifr not is_momod or not is_owner then
			return "Only Owners Can Add Gh!"
		end
		local user = 'user#id132921618'
		local chat = 'chat#id'..msg.to.id
		chat_add_user(chat, user, callback, false)
		return "Admin @MrGhor To :"..string.gsub(msg.to.print_name,"_", "")..,[,..msg.to.id..,],
	end
	return {
		patterns ={
			"^[/!$#&]([Aa]ddgh)$",
	              	"^([Aa]ddgh)$"
	              	},
	              run=run
              }
              
