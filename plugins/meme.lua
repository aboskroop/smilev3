--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
local function run(msg, matches)
local group = load_data('bot/group.json')
local addgroup = group[tostring(msg.chat_id)]
if matches[1] == 'ضع ملاحضه' and is_owner(msg) or is_momod(msg) and groupa then
redis:set('الملاحضه'..msg.chat_id_,matches[2])
tg.sendMessage(msg.chat_id_, 0, 1, '<b>تم حفض الملاحضه بنجاح ✔️</b>', 1, 'html')
end
if matches[1] == 'الملاحضه' and is_owner(msg) or is_momod(msg) and addgroup then
rules1 = redis:get('الملاحضه'..msg.chat_id_)
tg.sendMessage(msg.chat_id_, 0, 1, '<b>هنالك ملاحضه بلمجموعه وهي 💡 :</b>\n'.. rules1 , 1, 'html')
end
end
return {
  patterns = {
"^(ضع ملاحضه) (.*)$",
"^(الملاحضه)$"
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
