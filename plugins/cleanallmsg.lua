--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
local function deleteMessagesFromUser(chat_id, user_id)

  tdcli_function ({

    ID = "DeleteMessagesFromUser",

    chat_id_ = chat_id,

    user_id_ = user_id

  }, dl_cb, nil)

end
local function getChatId(chat_id)
  local chat = {}
  local chat_id = tostring(chat_id)

  if chat_id:match('^-100') then
    local channel_id = chat_id:gsub('-100', '')
    chat = {ID = channel_id, type = 'channel'}
  else
    local group_id = chat_id:gsub('-', '')
    chat = {ID = group_id, type = 'group'}
  end

  return chat
end

local function run(msg, matches)


if matches[1] == ("حذف الرسائل") and is_owner(msg) then

     local function rmsg_all(arg, data)
             local delall = data.members_
            if not delall[0] then
    tg.sendMessage(msg.chat_id_, msg.id_, 0,  '<b>لا يوجد مستخدم !</b>', 0)
      else
               for i=0 , #delall do
                deleteMessagesFromUser(msg.chat_id_, delall[i].user_id_)
               end
      tg.sendMessage(msg.chat_id_, msg.id_, 0,  '<b>تم حذف جميع رسائل  🗑</b>', 0)
           end
           end
  tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 5000}, rmsg_all, nil)

end
end
return {
  patterns = {


  "^(حذف الرسائل)$"

  },
  run = run
}
--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
