#> asset:artifact/1047.life_steal_emblem/trigger/remove_buff
#
# バフを取り外す処理
#
# @within function
#   asset:artifact/1047.life_steal_emblem/trigger/schedule
#   asset:artifact/1047.life_steal_emblem/trigger/3.main

# 物理攻撃 バフ取り外し
    data modify storage api: Argument.UUID set value [I;1,1,1047,7]
    function api:modifier/attack/physical/remove

# Message
    execute if score @s T3.BuffTick matches ..0 run tellraw @s [{"text":"魂命の徽章","color":"dark_aqua","bold":true},{"text":"の効果が切れた。","color":"white","bold":false}]

# スコアリセット
    scoreboard players reset @s T3.BuffTick