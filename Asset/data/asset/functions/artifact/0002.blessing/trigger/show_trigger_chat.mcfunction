#> asset:artifact/0002.blessing/trigger/show_trigger_chat
#
#
#
# @within function asset:artifact/0002.blessing/trigger/*

# 出力
    tellraw @s {"text":"能力ボーナスを一つ選んでください"}

# 選択トリガー
    scoreboard players reset @s 02.Trigger
    scoreboard players enable @s 02.Trigger
# 出力
# 選択回数が30以上なら選択不能になる
    execute if score $02.MaxHealth 02.SelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 体力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$02.MaxHealth","objective":"02.SelectBonusSum"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"60)","color":"white"}]
    execute if score $02.MaxHealth 02.SelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 1"},"color":"gold"},{"text":" 体力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"2","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$02.MaxHealth","objective":"02.SelectBonusSum"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"60)","color":"white"}]
    execute if score $02.MaxMP 02.SelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 魔力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$02.MaxMP","objective":"02.SelectBonusSum"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"120)","color":"white"}]
    execute if score $02.MaxMP 02.SelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 2"},"color":"gold"},{"text":" 魔力","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"4","color":"aqua"},{"text":" (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$02.MaxMP","objective":"02.SelectBonusSum"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"120)","color":"white"}]
    execute if score $02.Attack 02.SelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 攻撃","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusAttack","objective":"Global"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    execute if score $02.Attack 02.SelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 3"},"color":"gold"},{"text":" 攻撃","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusAttack","objective":"Global"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    execute if score $02.Defense 02.SelectCount matches 30.. run tellraw @s [{"text":"[選ぶ]","color":"gray"},{"text":" 防御","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"0","color":"yellow"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusDefense","objective":"Global"},"color":"yellow"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]
    execute if score $02.Defense 02.SelectCount matches ..29 run tellraw @s [{"text":"[選ぶ]","clickEvent":{"action":"run_command","value":"/trigger 02.Trigger set 4"},"color":"gold"},{"text":" 防御","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"text":"1","color":"aqua"},{"text":"% (合計","color":"white"},{"text":"\u0002","font":"space"},{"text":"+","color":"white"},{"score":{"name": "$BonusDefense","objective":"Global"},"color":"aqua"},{"text":"\u0002","font":"space"},{"text":"/","color":"white"},{"text":"\u0002","font":"space"},{"text":"30%)","color":"white"}]

# リスナー
    schedule function asset:artifact/0002.blessing/trigger/listener 1t
