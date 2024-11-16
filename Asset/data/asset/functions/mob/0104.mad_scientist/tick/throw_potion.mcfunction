#> asset:mob/0104.mad_scientist/tick/throw_potion
#
# ポーション投げるタイミングの処理
#
# @within function asset:mob/0104.mad_scientist/tick/

# バックステップ
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p[gamemode=!spectator] feet rotated ~180 ~-10 run function lib:motion/

# リセット
    data remove storage lib: Argument

# 薬品投げ
    data modify storage api: Argument.ID set value 105
    function api:mob/summon
    execute facing entity @p[tag=!PlayerShouldInvulnerable] feet run tp @e[type=armor_stand,scores={MobID=105},distance=..0.01] ~ ~1 ~ ~ ~

# 音
    playsound entity.splash_potion.throw hostile @a ~ ~ ~ 1 0.5 0

# スコアリセット
    scoreboard players reset @s 2W.Tick
    
# タグを全消し
    execute if entity @s[tag=2W.Poison] run tag @s remove 2W.Poison
    execute if entity @s[tag=2W.Fire] run tag @s remove 2W.Fire
    execute if entity @s[tag=2W.Water] run tag @s remove 2W.Water
    execute if entity @s[tag=2W.Thunder] run tag @s remove 2W.Thunder
