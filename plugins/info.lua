  local function run(msg, matches)
    local receiver = get_receiver(msg)
    if is_chat_msg(msg) then
      if msg.text == 'info' then
        if replay.msg.id ~= nil then
          if is_mod(msg.from.id, msg.to.id) then
            msgr = get_message(msg.reply_id, action_by_reply, {receiver=receiver})
          end
        else
          local text = 'Name: '..(msg.from.first_name or '')..' '..(msg.from.last_name or '')..'\n'
                       ..'First name️: '..(msg.from.first_name or '')..'\n'
                       ..'Last name : '..(msg.from.last_name or '')..'\n'
                       ..'User name : @'..(msg.from.username or '')..'\n'
                       ..'ID: ' ..(msg.from.id)
          local text = text..'\nYou are in group '
                       ..msg.to.title..' (ID: '..msg.to.id..')'
          return text
        end
  return {
    description = 'Know your info or the info of a chat members.',
    },
    patterns = {
      "^[!/]info $",
      "^([Ii]nfo) $",
    },
    run = run
  }
end
