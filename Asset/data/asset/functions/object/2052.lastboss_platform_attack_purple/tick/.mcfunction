#> asset:object/2052.lastboss_platform_attack_purple/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2052/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大を開始
# どういうわけか、Init処理にコレを入れるといきなり最大サイズになるのでこうしている
    execute if score @s General.Object.Tick matches 3 run function asset:object/2052.lastboss_platform_attack_purple/tick/transform

# 攻撃
    execute if score @s General.Object.Tick matches 43 run function asset:object/2052.lastboss_platform_attack_purple/tick/damage

# 縮小開始
#    execute if score @s General.Object.Tick matches 25 run function asset:object/2051.lastboss_platform_attack_red/tick/vanish

# 消滅
    execute if score @s General.Object.Tick matches 43.. run kill @s
