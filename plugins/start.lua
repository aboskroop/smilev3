--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
local function addgroup(msg)
local group = load_data('bot/group.json')
local groupa = group[tostring(msg.chat_id)]
if not groupa then
group[tostring(msg.chat_id)] = {
        group_type = 'SuperGroup',
		by = msg.from_id,
		moderators = {},
        set_owner = member_id ,
        settings = {
		  lock_link = "no",
lock_username = "no",
lock_edit = "no",
lock_fwd = "no",
lock_spam = "no",
lock_sticker = "no",				
lock_english = "no",
lock_persian = "no",
lock_tgservice = "no",			
lock_tag = "no",
lock_inline = "no",
lock_community = "no",				
mute_all = "no",
mute_text = "no",				
mute_photo = "no",
mute_video = "no",
mute_voice = "no",
mute_document = "no",
mute_gif = "no",
mute_audio = "no"
                  }
      }
      save_data(_config.group.data, group)
tg.sendMessage(msg.chat_id, msg.id_, 1, 'مرحبا عزيزي تم تفعيلي بنجاح ✔️', 1)
else
tg.sendMessage(msg.chat_id, msg.id_, 1, 'عزيزي المطور انا مفعل مسبقا ⚠️', 1)
end
end
local function remgroup(msg)
local group = load_data('bot/group.json')
local groupa = group[tostring(msg.chat_id)]
if groupa then
group[tostring(msg.chat_id)] = nil
      save_data(_config.group.data, group)
tg.sendMessage(msg.chat_id, msg.id_, 1, 'تم تعطيل حمايتي للمجموعه 🙍🏻‍♂️👋🏿', 1)
else
tg.sendMessage(msg.chat_id, msg.id_, 1, 'انا غير مفعل هنا  😾✋🏻', 1)
end
end

local function run(msg, matches)
if matches[1] == 'تفعيل' and is_sudo(msg) then
addgroup(msg)
elseif matches[1] == 'تعطيل' and is_sudo(msg) then
remgroup(msg)
end
end
return {
  patterns = {
    "^(تفعيل)$",
    "^(تعطيل)$",
 "^!!!edit:(تفعيل)$",
    "^!!!edit:(تعطيل)$"
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
