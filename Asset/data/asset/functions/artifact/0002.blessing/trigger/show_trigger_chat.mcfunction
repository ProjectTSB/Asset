#> asset:artifact/0002.blessing/trigger/show_trigger_chat
#
#
#
# @within function asset:artifact/0002.blessing/trigger/*

# 出力
    tellraw @s {"text":"能力ボーナスを一つ選んでください"}
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"},{"text":" 体力(現在値: +","color":"white"},{"score":{"name": "$BonusHealth","objective":"Global"},"color":"aqua"},{"text":") +","color":"white"},{"text":"2","color":"aqua"},{"text":" (","color":"white"},{"score":{"name": "$BonusHealthSelectCount","objective": "02.SelectCount"},"color":"aqua"},{"text":"/30)","color":"white"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"},{"text":" 魔力(現在値: +","color":"white"},{"score":{"name": "$BonusMP","objective":"Global"},"color":"aqua"},{"text":") +","color":"white"},{"text":"4","color":"aqua"},{"text":" (","color":"white"},{"score":{"name": "$BonusMPSelectCount","objective": "02.SelectCount"},"color":"aqua"},{"text":"/30)","color":"white"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"},{"text":" 攻撃(現在値: +","color":"white"},{"score":{"name": "$BonusAttack","objective":"Global"},"color":"aqua"},{"text":"%) +","color":"white"},{"text":"1","color":"aqua"},{"text":"%","color":"white"},{"text":" (","color":"white"},{"score":{"name": "$BonusAttackSelectCount","objective": "02.SelectCount"},"color":"aqua"},{"text":"/30)","color":"white"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"},{"text":" 防御(現在値: +","color":"white"},{"score":{"name": "$BonusDefense","objective":"Global"},"color":"aqua"},{"text":"%) +","color":"white"},{"text":"1","color":"aqua"},{"text":"%","color":"white"},{"text":" (","color":"white"},{"score":{"name": "$BonusDefenseSelectCount","objective": "02.SelectCount"},"color":"aqua"},{"text":"/30)","color":"white"}]
