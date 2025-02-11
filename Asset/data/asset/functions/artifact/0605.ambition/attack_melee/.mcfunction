#> asset:artifact/0605.ambition/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/605/attack_melee/

# 没収されたアイテムの個数を取得
    execute store result score @s Temporary run function api:lost_items/get_length

# 没収されたアイテム * 11の値を設定
    scoreboard players operation @s Temporary *= $11 Const

# 最大値をきめる
    scoreboard players set $MaxDamage Temporary 4400

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] positioned ~ ~1 ~ summon marker run function asset:artifact/0605.ambition/attack_melee/vfx/

# ダメージ
    execute store result storage api: Argument.Damage float 1 run scoreboard players operation @s Temporary < $MaxDamage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset @s Temporary
    scoreboard players reset $MaxDamage Temporary
