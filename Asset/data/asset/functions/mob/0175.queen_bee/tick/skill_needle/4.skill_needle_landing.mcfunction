#> asset:mob/0175.queen_bee/tick/skill_needle/4.skill_needle_landing
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_needle/3.skill_needle_shot

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

# ダメージ設定
    data modify storage api: Argument.Damage set value 25.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..50,limit=1] at @s run function api:damage/
    function api:damage/reset

# 毒を付与する
    effect give @a[gamemode=!spectator,tag=LandingTarget,distance=..50,limit=1] poison 6 2

# 着弾タグを消す
    tag @a[gamemode=!spectator,tag=LandingTarget,distance=..50,limit=1] remove LandingTarget
