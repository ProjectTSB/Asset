#> asset:mob/0038.laser_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/38/tick

# プレイヤーが遠くにいる場合
    execute unless entity @s[tag=C.Charge] if entity @p[tag=!PlayerShouldInvulnerable,distance=7..32] facing entity @p[tag=!PlayerShouldInvulnerable] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.21 ~ ~

# プレイヤーが近すぎる場合
    execute unless entity @s[tag=C.Charge] if entity @p[tag=!PlayerShouldInvulnerable,distance=..6] facing entity @p[tag=!PlayerShouldInvulnerable] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-250 facing entity @s eyes positioned as @s run tp @s ^ ^ ^-0.21 ~ ~

# 適正距離の場合
    execute unless entity @s[tag=C.Charge] if entity @p[tag=!PlayerShouldInvulnerable,distance=3..9] run function asset:mob/0038.laser_eye/tick/charge

# タグ付与されてる場合
    execute if entity @s[tag=C.Charge] run function asset:mob/0038.laser_eye/tick/charge

# 存在時間
    execute store result storage asset:context this.LifeTime int 0.9999999999 run data get storage asset:context this.LifeTime
    execute if data storage asset:context this{LifeTime:0} run function asset:mob/0038.laser_eye/tick/suicide
