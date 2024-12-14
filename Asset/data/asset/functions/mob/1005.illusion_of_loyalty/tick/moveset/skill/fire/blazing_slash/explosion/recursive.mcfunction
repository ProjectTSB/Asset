#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
#
#
#
# @within function
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive

# 演出
    particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 1
    particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0 5
    particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.05 10

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        function api:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] run function api:damage/
# リセット
    function api:damage/reset

# 壁がなければ再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^2 if block ~ ~ ~ #lib:no_collision run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
