#> asset:object/2053.lastboss_spinning_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2053/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle dust 0.667 1 0.976 0.5 ~ ~-0.5 ~ 0.05 0.5 0.05 0 5
    particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0.05 2

# 召喚者の特定
    function asset:object/2053.lastboss_spinning_sword/tick/detect_owner.m with storage asset:context this

# 拡大を開始
# どういうわけか、Init処理にコレを入れるといきなり最大サイズになるのでこうしている
    execute if score @s General.Object.Tick matches 3 run function asset:object/2053.lastboss_spinning_sword/tick/transform

# 召喚者の周りを回る
    # ふつう
        execute if entity @s[tag=!2053.Reverse,tag=!2053.Release] at @e[type=#lib:living,tag=2053.Owner,distance=..32,limit=1] rotated as @s rotated ~ 0 run tp @s ^ ^1 ^2 ~-22.5 ~
    # はんたい
        execute if entity @s[tag=2053.Reverse,tag=!2053.Release] at @e[type=#lib:living,tag=2053.Owner,distance=..32,limit=1] rotated as @s rotated ~ 0 run tp @s ^ ^1 ^2 ~22.5 ~
# 召喚者を中心に飛んでいく
    # ふつう
        execute if entity @s[tag=2053.Release,tag=!2053.Reverse] facing entity @e[type=#lib:living,tag=2053.Owner,distance=..32,limit=1] feet rotated ~100 0 run tp @s ^ ^ ^1 ~ ~
    # はんたい
        execute if entity @s[tag=2053.Release,tag=2053.Reverse] facing entity @e[type=#lib:living,tag=2053.Owner,distance=..32,limit=1] feet rotated ~-100 0 run tp @s ^ ^ ^1 ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 回転中のダメージ
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if entity @s[tag=2053.Release] positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:object/2053.lastboss_spinning_sword/tick/damage

# 召喚者がいないと死ぬ
    execute unless entity @e[type=#lib:living,tag=2053.Owner,distance=..100,limit=1] run kill @s

# リセット
    tag @e[type=#lib:living,tag=2053.Owner,distance=..100,limit=1] remove 2053.Owner

# 消滅処理
    kill @s[scores={General.Object.Tick=160..}]
