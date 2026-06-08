#> asset:mob/0038.laser_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/38/tick

# チャージ中でなければsuper.tick
    execute unless entity @s[tag=C.Charge] run function asset:mob/super.tick

# 適正距離の場合
    execute unless entity @s[tag=C.Charge] if entity @p[tag=!PlayerShouldInvulnerable,distance=3..9] run function asset:mob/0038.laser_eye/tick/charge

# タグ付与されてる場合
    execute if entity @s[tag=C.Charge] run function asset:mob/0038.laser_eye/tick/charge

# 存在時間
    execute store result storage asset:context this.LifeTime int 0.9999999999 run data get storage asset:context this.LifeTime
    execute if data storage asset:context this{LifeTime:0} run function asset:mob/0038.laser_eye/tick/suicide
