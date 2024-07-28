#> asset:mob/0187.flame_mage/tick/3.facing_shoot
#
# プレイヤーの方へ直接撃つ
#
# @within function asset:mob/0187.flame_mage/tick/2.shoot_magic

# プレイヤーの方向に撃つ
    data modify storage api: Argument.ID set value 188
    execute anchored eyes positioned ^-0.25 ^ ^ run function api:mob/summon
    execute anchored eyes positioned ^-0.25 ^ ^ run tp @e[type=marker,tag=!57.Already,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @p[distance=..20] eyes
    execute anchored eyes positioned ^-0.25 ^ ^ run tag @e[type=marker,tag=!57.Already,distance=..0.01,sort=nearest,limit=1] add 57.Already
