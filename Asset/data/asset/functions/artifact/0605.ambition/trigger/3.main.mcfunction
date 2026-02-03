#> asset:artifact/0605.ambition/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0605.ambition/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 没収されたアイテムの個数を取得
    execute store result score @s Temporary run function api:lost_items/get_length

# 没収されたアイテム * 11の値を設定
    scoreboard players operation @s Temporary *= $11 Const

# ダメージ最大値設定
    scoreboard players set $MaxDamage Temporary 4400
    scoreboard players operation @s Temporary < $MaxDamage Temporary

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] positioned ~ ~1 ~ summon marker run function asset:artifact/0605.ambition/trigger/vfx/

# ダメージ
    execute store result storage api: Argument.Damage float 1 run scoreboard players get @s Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset @s Temporary
    scoreboard players reset $MaxDamage Temporary
