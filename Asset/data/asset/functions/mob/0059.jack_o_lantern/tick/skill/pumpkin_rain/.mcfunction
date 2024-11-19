#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/
#
# カボチャの雨のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 最初のtickに実行すること
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/first_tick

# 召喚
    execute if entity @s[scores={General.Mob.Tick=20..240}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/

# カボチャの雨の終わり
    execute if entity @s[scores={General.Mob.Tick=300}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/end

# endの1tick後に姿を現す そうしないと上から降りてくるのが見えてしまう
    execute if entity @s[scores={General.Mob.Tick=305}] at @s run item replace entity @s armor.head with stick{CustomModelData:20394}

# リセット
    execute if entity @s[scores={General.Mob.Tick=360..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset
