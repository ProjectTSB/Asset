#> asset:mob/0187.flame_mage/tick/4.straight_shoot
#
#
#
# @within function asset:mob/0187.flame_mage/tick/3.shoot_magic

# プレイヤーの方向に撃つ
    execute facing entity @p[gamemode=!spectator] eyes anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0187.flame_mage/tick/vfx
    data modify storage api: Argument.ID set value 188
    execute anchored eyes positioned ^-0.25 ^ ^ run function api:mob/summon
    execute anchored eyes positioned ^-0.25 ^ ^ run tp @e[type=marker,tag=58.Init,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..20] eyes
