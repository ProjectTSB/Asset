#> asset:artifact/0002.blessing/trigger/on_trigger
#
#
#
# @within function asset:artifact/0002.blessing/trigger/listener

# エラー値
    execute unless score @s 02.Trigger matches 1..4 run function lib:message/invalid_operation
    execute unless score @s 02.Trigger matches 1..4 run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
# 体力
    execute if score @s 02.Trigger matches 1 if score $02.MaxHealth 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 1 if score $02.MaxHealth 02.SelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 1 run scoreboard players add $BonusHealth Global 2
    execute if score @s 02.Trigger matches 1 run scoreboard players add $02.MaxHealth 02.SelectBonusSum 2
    execute if score @s 02.Trigger matches 1 run scoreboard players add $02.MaxHealth 02.SelectCount 1
    execute if score @s 02.Trigger matches 1 as @a run function api:modifier/max_health/update_bonus
# MP
    execute if score @s 02.Trigger matches 2 if score $02.MaxMP 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 2 if score $02.MaxMP 02.SelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 2 run scoreboard players add $BonusMP Global 4
    execute if score @s 02.Trigger matches 2 run scoreboard players add $02.MaxMP 02.SelectBonusSum 4
    execute if score @s 02.Trigger matches 2 run scoreboard players add $02.MaxMP 02.SelectCount 1
    execute if score @s 02.Trigger matches 2 as @a run function api:modifier/max_mp/update_bonus
# 攻撃
    execute if score @s 02.Trigger matches 3 if score $02.Attack 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 3 if score $02.Attack 02.SelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 3 run scoreboard players add $BonusAttack Global 1
    execute if score @s 02.Trigger matches 3 run scoreboard players add $02.Attack 02.SelectCount 1
    execute if score @s 02.Trigger matches 3 as @a run function api:modifier/attack/base/update_bonus
# 防御
    execute if score @s 02.Trigger matches 4 if score $02.Defense 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 4 if score $02.Defense 02.SelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 4 run scoreboard players add $BonusDefense Global 1
    execute if score @s 02.Trigger matches 4 run scoreboard players add $02.Defense 02.SelectCount 1
    execute if score @s 02.Trigger matches 4 as @a run function api:modifier/defense/base/update_bonus
# リセット
    scoreboard players reset @s 02.Trigger
