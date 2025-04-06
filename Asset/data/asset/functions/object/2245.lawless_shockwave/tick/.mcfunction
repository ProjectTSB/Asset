#> asset:object/2245.lawless_shockwave/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2245/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# プレイヤーをなんとなく追尾
    execute if score @s General.Object.Tick matches ..30 facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-30 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0

# しばらくすると、最寄りのボスのもとに飛んでいく
    execute if score @s General.Object.Tick matches 31.. facing entity @e[type=iron_golem,scores={MobID=437},distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-5 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0

# 移動。
    tp @s ^ ^ ^1

# パーティクル
    particle minecraft:crit ~ ~ ~ 0.2 0.1 0.2 0.05 5 force @a[distance=..64]
    particle minecraft:electric_spark ~ ~ ~ 0.2 0.1 0.2 0.05 10 force @a[distance=..64]

# 一定間隔で爆発
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 数tickごとに攻撃判定が発生
        scoreboard players operation $Interval Temporary %= $4 Const
        execute if score $Interval Temporary matches 0 run function asset:object/2245.lawless_shockwave/tick/explosion
    # リセット
        scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=75..}]
