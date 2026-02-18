#> asset:object/2092.ghost_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2092/tick

#> Private
# @private
    #declare tag Target
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    #

# 最初は少し上昇する
# 上向き移動の際はobjectを上に向かせる必要があり、プレイヤーの方を見ていてほしく
# displayのtransformationを弄る必要があるので飛翔体抽象の処理は用いない
    execute if entity @s[scores={General.Object.Tick=..0}] run tp @s ~ ~0.05 ~

# ターゲットの方を見る
    execute at @s as @a[tag=!PlayerShouldInvulnerable,distance=..100] if score @e[type=item_display,tag=this,distance=..0.01,limit=1] 2092.TargetID = @s UserID run tag @s add Target
    execute if entity @s[scores={General.Object.Tick=..0}] at @s facing entity @a[tag=Target,distance=..100,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# スコアが0の時に演出
    execute if entity @s[scores={General.Object.Tick=0}] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.8 0

# 発射してすぐまでは誘導
    execute if entity @s[scores={General.Object.Tick=0..10}] at @s facing entity @a[tag=Target,distance=..100,limit=1] eyes positioned ^ ^ ^-120 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# 定期的に追加で演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    #execute if score $Interval Temporary matches 0 run playsound ogg:mob.vex.idle1 hostile @a ~ ~ ~ 0.8 0.5 0
    #execute if score $Interval Temporary matches 0 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.15 1.8 0
    scoreboard players reset $Interval Temporary

# 継承
    execute if entity @s[scores={General.Object.Tick=0..}] at @s run function asset:object/super.tick

# リセット
    tag @p[tag=Target] remove Target

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
