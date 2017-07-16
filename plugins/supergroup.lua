--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
local function lock_group_links(msg, target)
local group = load_data('bot/group.json')
  local group_link_lock = group[tostring(target)]['settings']['lock_link']
  if group_link_lock == 'yes' then
    pm = '<b>تم قفل الروابط مسبقا 🔗</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_link'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل الروابط بنجاح 🔗</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_username(msg, target)
local group = load_data('bot/group.json')
  local group_username_lock = group[tostring(target)]['settings']['lock_username']
  if group_username_lock == 'yes' then
    pm = '<b>تم قفل اليوزر مسبقا 🌀</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_username'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل اليوزر بنجاح 🌀</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_edit(msg, target)
local group = load_data('bot/group.json')
  local group_edit_lock = group[tostring(target)]['settings']['lock_edit']
  if group_edit_lock == 'yes' then
    pm = '<b>تم قفل التعديل مسبقا 🔏</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_edit'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل التعديل بنجاح 🔏</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_fwd(msg, target)
local group = load_data('bot/group.json')
  local group_fwd_lock = group[tostring(target)]['settings']['lock_fwd']
  if group_fwd_lock == 'yes' then
    pm = '<b>تم قفل التوجيه مسبقا ↪️️</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_fwd'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل التوجيه بنجاح ↪️</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_spam(msg, target)
local group = load_data('bot/group.json')
  local group_spam_lock = group[tostring(target)]['settings']['lock_spam']
  if group_spam_lock == 'yes' then
    pm = '<b>تم قفل التكرار مسبقا 🗃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_spam'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل التكرار بنجاح 🗃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_sticker(msg, target)
local group = load_data('bot/group.json')
  local group_sticker_lock = group[tostring(target)]['settings']['lock_sticker']
  if group_sticker_lock == 'yes' then
    pm = '<b>تم قفل الملصقات مسبقا 🤹🏻‍♂️</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_sticker'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل الملصقات بنجاح 🤹🏻‍♂️</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_english(msg, target)
local group = load_data('bot/group.json')
  local group_english_lock = group[tostring(target)]['settings']['lock_english']
  if group_english_lock == 'yes' then
    pm = '<b>اللغه الانكليزيهEN مقفله مسبقا 🐼</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_english'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>اللغه الانكليزيه EN مقفله الان 🐼 </b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_persian(msg, target)
local group = load_data('bot/group.json')
  local group_persian_lock = group[tostring(target)]['settings']['lock_persian']
  if group_persian_lock == 'yes' then
    pm = '<b>اللغه الفارسيهFr مقفله مسبقا 🐼</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_persian'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>اللغه الفارسيه Fr مقفله الان 🐼 </b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_tgservice(msg, target)
local group = load_data('bot/group.json')
  local group_tgservice_lock = group[tostring(target)]['settings']['lock_tgservice']
  if group_tgservice_lock == 'yes' then
    pm = '<b>تم قفل الاشعارات مسبقا 🖥</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_tgservice'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل الاشعارات بنجاح 🖥</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_tag(msg, target)
local group = load_data('bot/group.json')
  local group_tag_lock = group[tostring(target)]['settings']['lock_tag']
  if group_tag_lock == 'yes' then
    pm = '<b>تم قفل الاشاره مسبقا 📡</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_tag'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل الاشاره بنجاح 📡</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_inline(msg, target)
local group = load_data('bot/group.json')
  local group_inline_lock = group[tostring(target)]['settings']['lock_inline']
  if group_inline_lock == 'yes' then
    pm = '<b>تم قفل الانلاين مسبقا 📺</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_inline'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل الانلاين بنجاح 📺</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_community(msg, target)
local group = load_data('bot/group.json')
  local group_community_lock = group[tostring(target)]['settings']['lock_community']
  if group_community_lock == 'yes' then
    pm = '<b>تم قفل كل الاعدادات مسبقا 🎛</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_community'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>تم قفل كل الاعدادات بنجاح 🎛</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
------------------
local function unlock_group_links(msg, target)
local group = load_data('bot/group.json')
  local group_link_lock = group[tostring(target)]['settings']['lock_link']
  if group_link_lock == 'no' then
    pm = '<b>تم فتح الروابط مسبقا 🔗</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_link'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الروابط بنجاح 🔗</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_username(msg, target)
local group = load_data('bot/group.json')
  local group_username_lock = group[tostring(target)]['settings']['lock_username']
  if group_username_lock == 'no' then
    pm = '<b>تم فتح اليوزر مسبقا 🌀</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_username'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح اليوزر بنجاح 🌀</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_edit(msg, target)
local group = load_data('bot/group.json')
  local group_edit_lock = group[tostring(target)]['settings']['lock_edit']
  if group_edit_lock == 'no' then
    pm = '<b>تم فتح التعديل مسبقا 🔏</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_edit'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح التعديل بنجاح 🔏</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_fwd(msg, target)
local group = load_data('bot/group.json')
  local group_fwd_lock = group[tostring(target)]['settings']['lock_fwd']
  if group_fwd_lock == 'no' then
    pm = '<b>تم فتح التوجيه مسبقا ↪️</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_fwd'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح التوجيه بنجاح ↪️</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_spam(msg, target)
local group = load_data('bot/group.json')
  local group_spam_lock = group[tostring(target)]['settings']['lock_spam']
  if group_spam_lock == 'no' then
    pm = '<b>تم فتح التكرار مسبقا 🗃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_spam'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح التكرار بنجاح 🗃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_sticker(msg, target)
local group = load_data('bot/group.json')
  local group_sticker_lock = group[tostring(target)]['settings']['lock_sticker']
  if group_sticker_lock == 'no' then
    pm = '<b>تم فتح الملصقات مسبقا 🤹🏻‍♂️</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_sticker'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الملصقات بنجاح 🤹🏻‍♂️</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_english(msg, target)
local group = load_data('bot/group.json')
  local group_english_lock = group[tostring(target)]['settings']['lock_english']
  if group_english_lock == 'no' then
    pm = '<b>اللغه الانكليزيهEN مفتوحه مسبقا 🐼</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_english'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>اللغه الانكليزيه EN مفتوحه الان 🐼</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_persian(msg, target)
local group = load_data('bot/group.json')
  local group_persian_lock = group[tostring(target)]['settings']['lock_persian']
  if group_persian_lock == 'no' then
    pm = '<b>اللغه الفارسيهFr مفتوحه مسبقا 🐼</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_persian'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>اللغه الفارسيه Fr مفتوحه الان 🐼</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_tgservice(msg, target)
local group = load_data('bot/group.json')
  local group_tgservice_lock = group[tostring(target)]['settings']['lock_tgservice']
  if group_tgservice_lock == 'no' then
    pm = '<b>تم فتح الاشعارات مسبقا 🖥</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_tgservice'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الاشعارات بنجاح 🖥</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_tag(msg, target)
local group = load_data('bot/group.json')
  local group_tag_lock = group[tostring(target)]['settings']['lock_tag']
  if group_tag_lock == 'no' then
    pm = '<b>تم فتح الاشاره مسبقا 📡</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_tag'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الاشاره بنجاح 📡</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_inline(msg, target)
local group = load_data('bot/group.json')
  local group_inline_lock = group[tostring(target)]['settings']['lock_inline']
  if group_inline_lock == 'no' then
    pm = '<b>تم فتح الانلاين مسبقا 📺</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_inline'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الانلاين بنجاح 📺</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_community(msg, target)
local group = load_data('bot/group.json')
  local group_community_lock = group[tostring(target)]['settings']['lock_community']
  if group_community_lock == 'no' then
    pm = '<b>تم فتح كل الاعدادات مسبقا 🎛</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_community'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح كل الاعدادات بنجاح 🎛</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
----------

local function mute_all_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_all']
  if mute_all  == 'yes' then
    pm = '<b>تم قفل الدردشه مسبقا 🎚</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_all'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل الدردشه بنجاح 🎚</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_all_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_all']
  if mute_all  == 'no' then
    pm = '<b>تم فتح الدردشه مسبقا 🎚</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_all'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الدردشه بنجاح 🎚</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_text_group(msg, target)
local group = load_data('bot/group.json')
  local mute_text = group[tostring(target)]['settings']['mute_text']
  if mute_text  == 'yes' then
    pm = '<b>تم قفل الكتابه مسبقا 📝</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_text'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل الكتابه بنجاح 📝</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_text_group(msg, target)
local group = load_data('bot/group.json')
  local mute_text = group[tostring(target)]['settings']['mute_text']
  if mute_text  == 'no' then
    pm = '<b>تم فتح الكتابه مسبقا 📝</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_text'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الكتابه بنجاح 📝</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_photo_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_photo']
  if mute_all  == 'yes' then
    pm = '<b>تم قفل الصور مسبقا 📸</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_photo'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل الصور بنجاح 📸</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_photo_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_photo']
  if mute_all  == 'no' then
    pm = '<b>تم فتح الصور مسبقا 📸</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_photo'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الصور بنجاح 📸</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_video_group(msg, target)
local group = load_data('bot/group.json')
  local mute_video = group[tostring(target)]['settings']['mute_video']
  if mute_video  == 'yes' then
    pm = '<b>تم قفل الفيديوهات مسبقا 📽</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_video'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل الفيديوهات بنجاح 📽</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_video_group(msg, target)
local group = load_data('bot/group.json')
  local mute_video = group[tostring(target)]['settings']['mute_video']
  if mute_video  == 'no' then
    pm = '<b>تم فتح الفيديوهات مسبقا 📽</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_video'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الفيديوهات بنجاح 📽</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_gif_group(msg, target)
local group = load_data('bot/group.json')
  local mute_gif = group[tostring(target)]['settings']['mute_gif']
  if mute_gif  == 'yes' then
    pm = '<b>تم قفل المتحركه مسبقا 🌃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_gif'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل المتحركه بنجاح 🌃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_gif_group(msg, target)
local group = load_data('bot/group.json')
  local mute_gif = group[tostring(target)]['settings']['mute_gif']
  if mute_gif  == 'no' then
    pm = '<b>تم فتح المتحركه مسبقا 🌃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_gif'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح المتحركه بنجاح 🌃</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_voice_group(msg, target)
local group = load_data('bot/group.json')
  local mute_voice = group[tostring(target)]['settings']['mute_voice']
  if mute_voice  == 'yes' then
    pm = '<b>تم قفل البصمات مسبقا 🎙</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_voice'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل البصمات بنجاح 🎙</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_voice_group(msg, target)
local group = load_data('bot/group.json')
  local mute_voice = group[tostring(target)]['settings']['mute_voice']
  if mute_voice  == 'no' then
    pm = '<b>تم فتح البصمات مسبقا 🎙</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_voice'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح البصمات بنجاح 🎙</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_audio_group(msg, target)
local group = load_data('bot/group.json')
  local mute_audio = group[tostring(target)]['settings']['mute_audio']
  if mute_audio  == 'yes' then
    pm = '<b>تم قفل الصوتيات مسبقا 🎵</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_audio'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل الصوتيات بنجاح 🎵</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_audio_group(msg, target)
local group = load_data('bot/group.json')
  local mute_audio = group[tostring(target)]['settings']['mute_audio']
  if mute_audio  == 'no' then
    pm = '<b>تم فتح الصوتيات مسبقا 🎵</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_audio'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الصوتيات بنجاح 🎵</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_document_group(msg, target)
local group = load_data('bot/group.json')
  local mute_document = group[tostring(target)]['settings']['mute_document']
  if mute_document  == 'yes' then
    pm = '<b>تم قفل الملفات مسبقا 📁</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_document'] = 'yes'
    save_data(_config.group.data, group)
    pm= '<b>تم قفل الملفات بنجاح 📁</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_document_group(msg, target)
local group = load_data('bot/group.json')
  local mute_document = group[tostring(target)]['settings']['mute_document']
  if mute_document  == 'no' then
    pm = '<b>تم فتح الملفات مسبقا 📁</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_document'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>تم فتح الملفات بنجاح 📁</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end

local function group_settings(msg, target)
local group = load_data('bot/group.json')
pm = '<b>الاعدادات العامه للمجموعه 🎚</b> \n 🔹➖➖➖➖➖➖➖🔹<code></code>'
--pm = pm..'\n <code>→→→→→→→→→→→→</code>'
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الروابط</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_link']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>اليوزر</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_username']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>التعديل</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_edit']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>التوجيه</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_fwd']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>التكرار</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_spam']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الملصقات</b> <code>➣</code>'..group[tostring(target)]['settings']['lock_sticker']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الانكليزيه</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_english']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الفارسيه</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_persian']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الاشعارات</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_tgservice']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الاشاره</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_tag']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الانلاين</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_inline']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الكل</b> <code>➣</code> '..group[tostring(target)]['settings']['lock_community']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الدردشه</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_all']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الكتابه</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_text']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الصور</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_photo']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الفيديو</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_video']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>البصمه</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_voice']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الملفات</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_document']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>الصوتيات</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_audio']..''
pm = pm..'\n  <b>Lock</b> <code>➣➣</code> <b>المتحركه</b> <code>➣</code> '..group[tostring(target)]['settings']['mute_gif']..''
--pm = '<code>→→→→→→→→→→→→</code>'
pm = pm..'\n <code>🔹➖➖➖➖➖➖➖➖🔹</code> \n 📚 <b>Ch</b>  @porgramer2017 '

tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
end
local function run(msg, matches)
local group = load_data('bot/group.json')
local addgroup = group[tostring(msg.chat_id)]
if addgroup and is_momod(msg) then
if matches[1] == 'الاعدادات'  then
group_settings(msg, msg.chat_id)
elseif matches[1] == 'قفل' then
if matches[2] == 'الروابط' then
lock_group_links(msg, msg.chat_id)
elseif matches[2] == 'التعديل' then
lock_group_edit(msg, msg.chat_id)
elseif matches[2] == 'التوجيه' then
lock_group_fwd(msg, msg.chat_id)
elseif matches[2] == 'اليوزر' then
lock_group_username(msg, msg.chat_id)
elseif matches[2] == 'التكرار' then
lock_group_spam(msg, msg.chat_id)
elseif matches[2] == 'الملصقات' then
lock_group_sticker(msg, msg.chat_id)
elseif matches[2] == 'الانكليزيه' then
lock_group_english(msg, msg.chat_id)
elseif matches[2] == 'الفارسيه' then
lock_group_persian(msg, msg.chat_id)
elseif matches[2] == 'الاشعارات' then
lock_group_tgservice(msg, msg.chat_id)
elseif matches[2] == 'الاشاره' then
lock_group_tag(msg, msg.chat_id)
elseif matches[2] == 'الانلاين' then
lock_group_inline(msg, msg.chat_id)
elseif matches[2] == 'الاعدادات' then
lock_group_community(msg, msg.chat_id)
end
elseif matches[1] == 'فتح' then
if matches[2] == 'الروابط' then
unlock_group_links(msg, msg.chat_id,group )
elseif matches[2] == 'التعديل' then
unlock_group_edit(msg, msg.chat_id)
elseif matches[2] == 'التوجيه' then
unlock_group_fwd(msg, msg.chat_id)
elseif matches[2] == 'اليوزر' then
unlock_group_username(msg, msg.chat_id)
elseif matches[2] == 'التكرار' then
unlock_group_spam(msg, msg.chat_id)
elseif matches[2] == 'الملصقات' then
unlock_group_sticker(msg, msg.chat_id)
elseif matches[2] == 'الانكليزيه' then
unlock_group_english(msg, msg.chat_id)
elseif matches[2] == 'الفارسيه' then
unlock_group_persian(msg, msg.chat_id)
elseif matches[2] == 'الاشاره' then
unlock_group_tag(msg, msg.chat_id)
elseif matches[2] == 'الاشعارات' then
unlock_group_tgservice(msg, msg.chat_id)
elseif matches[2] == 'الانلاين' then
unlock_group_inline(msg, msg.chat_id,group )
elseif matches[2] == 'الاعدادات' then
unlock_group_community(msg, msg.chat_id)
end
elseif matches[1] == 'اقفل' or matches[1] == 'lock' then
if matches[2] == 'الدردشه' then
mute_all_group(msg, msg.chat_id)
elseif matches[2] == 'الكتابه' then
mute_text_group(msg, msg.chat_id)
elseif matches[2] == 'الصور' then
mute_photo_group(msg, msg.chat_id)
elseif matches[2] == 'الملفات' then
mute_document_group(msg, msg.chat_id)
elseif matches[2] == 'المتحركه' then
mute_gif_group(msg, msg.chat_id)
elseif matches[2] == 'الصوتيات' then
mute_audio_group(msg, msg.chat_id)
elseif matches[2] == 'البصمه' then
mute_voice_group(msg, msg.chat_id)
elseif matches[2] == 'الفيديو' then
mute_video_group(msg, msg.chat_id)
end
elseif matches[1] == 'افتح' or matches[1] == 'unlock' then
if matches[2] == 'الدردشه' then
unmute_all_group(msg, msg.chat_id,group )
elseif matches[2] == 'الكتابه' then
unmute_text_group(msg, msg.chat_id)
elseif matches[2] == 'الصور' then
unmute_photo_group(msg, msg.chat_id)
elseif matches[2] == 'الملفات' then
unmute_document_group(msg, msg.chat_id)
elseif matches[2] == 'المتحركه' then
unmute_gif_group(msg, msg.chat_id)
elseif matches[2] == 'الصوتيات' then
unmute_audio_group(msg, msg.chat_id)
elseif matches[2] == 'البصمه' then
unmute_voice_group(msg, msg.chat_id)
elseif matches[2] == 'الفيديو' then
unmute_video_group(msg, msg.chat_id)
end
end
end
end
---------------

return {
  patterns = {
    "^(قفل) (.*)$",
    "^(فتح) (.*)$",
    "^(اقفل) (.*)$",
    "^(افتح) (.*)$",
    "^(الاعدادات)$",
"^!!!edit:[/#!](lock) (.*)$",
"^!!!edit:[/#!](unlock) (.*)$",
"^!!!edit:[/#!](mute) (.*)$",
"^!!!edit:[/#!](unmute) (.*)$",
"^!!!edit:[/#!](settings)$"
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
