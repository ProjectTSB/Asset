#> asset:object/1011.456_dice/tick/beam/hit
#
#
#
# @within function asset:object/1011.456_dice/tick/beam/recursive

#> Private
# @private
    #declare score_holder $UserID
    #declare score_holder $Element

# 属性をランダムに決める
    execute store result score $Element Temporary run random value 0..2

# 演出
    execute at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~ 1 1.5
    execute if score $Element Temporary matches 0 at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run particle minecraft:dust 1000000000 1 0 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force @a[distance=..30]
    execute if score $Element Temporary matches 1 at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run particle dust 1 1000000000 1000000000 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force @a[distance=..30]
    execute if score $Element Temporary matches 2 at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run particle dust 10000000000 10000000000 1 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force @a[distance=..30]

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    execute if score $Element Temporary matches 0 run data modify storage api: Argument.ElementType set value "Fire"
    execute if score $Element Temporary matches 1 run data modify storage api: Argument.ElementType set value "Water"
    execute if score $Element Temporary matches 2 run data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] remove LandingTarget

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $Element Temporary
