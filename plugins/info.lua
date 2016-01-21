do
local function callback(extra, success, result)
    vardump(success)
    cardump(result)
end
  local function action_by_reply(extra, success, result)
    local text = 'User In Group: '..(msg.to.id or '')..'\nUser Id: '..(result.from.id or '')..'\nUser First Name: '..(result.from.first_name or '')..'\n User Last Name: '..(result.from.last_name or '')..'\nUser Username: @'..(result.from.username or '')
         send_large_msg(extra.receiver, text)
         if is_chat_msg(msg) then
           if msg.text == '!info' then
              if msg.reply_id then
            msgr = get_message(msg.reply_id, action_by_reply, {receiver=receiver})
       end
    end
  end
end
    local function run(msg, matches)
    local receiver = get_receiver(msg)
    local user = 'user#id'..msg.from.id
    local ch = 'chat#id'..msg.to.id
    local group_link = data[tostring(71759052)]['settings']['set_link']
    local fuse = 'Your In Group:'..string.gsub(msg.to.print_name, "_", " ")..'\nWith Id: ' .. msg.to.id ..'\nYour Id: '..msg.from.id..'\nName: ' .. msg.from.print_name ..'\nLast: '..msg.from.last_name..'\nUsername: @' .. msg.from.username..'\nSupport Link For Buying Groups:\n '..group_link
    local sends = send_msg(ch, fuse, ok_cb, false)
    return 
end
return {
    patterns ={
        "^[/!@#$&]([Ii]nfo)$",
        "^([Ii]nfo)$"
        },
    run = run
}
end
