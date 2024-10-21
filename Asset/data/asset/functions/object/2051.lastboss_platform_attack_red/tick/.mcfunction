#> asset:object/2051.lastboss_platform_attack_red/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2051/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大を開始
# どういうわけか、Init処理にコレを入れるといきなり最大サイズになるのでこうしている
    execute if score @s General.Object.Tick matches 3 run function asset:object/2051.lastboss_platform_attack_red/tick/transform

# 警告


# 攻撃
    execute if score @s General.Object.Tick matches 23 run function asset:object/2051.lastboss_platform_attack_red/tick/damage

# 縮小開始
#    execute if score @s General.Object.Tick matches 25 run function asset:object/2051.lastboss_platform_attack_red/tick/vanish

# 消滅
    execute if score @s General.Object.Tick matches 23.. run kill @s
