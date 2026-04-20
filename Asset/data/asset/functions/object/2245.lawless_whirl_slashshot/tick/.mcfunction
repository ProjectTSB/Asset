#> asset:object/2245.lawless_whirl_slashshot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2245/tick

# 召喚者を特定
    function asset:object/2245.lawless_whirl_slashshot/tick/detect_owner.m with storage asset:context this

# 召喚者を中心に回りながら飛んでいく
    execute if score @s General.Object.Tick matches ..60 facing entity @e[type=#lib:living,tag=2245.Owner,distance=..32,limit=1] feet rotated ~90 0 run tp @s ^ ^ ^ ~ ~

# まっすぐ飛んでいく
    execute if score @s General.Object.Tick matches 61.. run tp @s ^ ^ ^ ~-2.5 ~

# Super
    function asset:object/super.tick
