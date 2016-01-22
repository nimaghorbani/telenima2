do
  
local function callbackres(extra, success, result) -- Callback for res_user in line 27
  local user = 'user#id'..132921618
	local chat = 'chat#id'..extra.chatid
	chat_add_user(chat, user, ok_cb, false)
end
function run(msg, matches)
  local data = load_data(_config.moderation.data)
  if not is_realm(msg) then
    if data[tostring(msg.to.id)]['settings']['lock_member'] == 'yes' and not is_admin(msg) then
		  return 'Group is private.'
    end
end
  if msg.to.type ~= 'chat' then 
    return
  end
  if not is_momod(msg) then
    return
  end 
  return {
    patterns = {
      "^[!/$&%]([Aa]ddgh) (.*)$",
      "^([Aa]ddgh (.*)$"
    },
    run = run
}
end
