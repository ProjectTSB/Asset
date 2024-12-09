#> asset:artifact/0002.blessing/trigger/show_trigger_chat
#
#
#
# @within function asset:artifact/0002.blessing/trigger/*

# 出力
    tellraw @s {"text":"能力ボーナスを一つ選んでください"}
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"},{"text":" 体力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"2","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusHealth","objective":"Global"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"60)","color":"white"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"},{"text":" 魔力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"4","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusMP","objective":"Global"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"120)","color":"white"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"},{"text":" 攻撃","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusAttack","objective":"Global"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"},{"text":" 防御","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusDefense","objective":"Global"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
