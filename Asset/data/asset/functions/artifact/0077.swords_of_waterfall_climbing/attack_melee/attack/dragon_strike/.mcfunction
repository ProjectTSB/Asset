#> asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/dragon_strike/
#
# 叩きつけ
#
# @within function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/

# 演出
    function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/vfx

# ダメージ
    data modify storage api: Argument.Damage set value 65f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01] run function api:damage/
    function api:damage/reset

# 敵が空中にいなかったらreturn
    execute at @e[type=#lib:living,tag=Victim,tag=!Immovable,distance=..0.01] unless block ~ ~-1 ~ #lib:no_collision run return 0

# 敵を叩き落とす
    execute as @e[type=#lib:living,tag=Victim,tag=!Immovable,distance=..0.01] at @s run function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/dragon_strike/fall_enemy

# 叩きつけ演出
    execute at @e[type=#lib:living,tag=Victim,distance=..50] run function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/dragon_strike/vfx

# 範囲ダメージ
    data modify storage api: Argument.Damage set value 65f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute at @e[type=#lib:living,tag=Victim,distance=..50] as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Recursive Temporary
    tag @e[type=#lib:living,tag=Landing,distance=..50] remove Landing
