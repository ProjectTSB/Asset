#> asset:artifact/0329.approaching_hook_shot/attack_projectile/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/329/attack_projectile/

# 矢が当たったエンティティに視線方向維持でテレポート
    execute positioned as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run tp @a[tag=this] ~ ~ ~

    execute at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 1 200

    execute at @s run playsound minecraft:entity.shulker.teleport player @a ~ ~ ~ 2 1.5
