#> asset:object/2043.lastboss_ice_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2043/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 実行時間を移す
    scoreboard players operation $ParticleInterval Temporary = @s General.Object.Tick
    scoreboard players operation $DamageInterval Temporary = @s General.Object.Tick

# 落下前の回転
    # 最初は遅い
        execute if score @s General.Object.Tick matches 0..20 run tp @s ~ ~ ~ ~22.5 ~
    # 落下が近くなると速く回る
        execute if score @s[tag=!2043.Landed] General.Object.Tick matches 21.. run tp @s ~ ~ ~ ~45 ~

# 落下開始
    # 落下直前、ちょっとフワっと上がる
        execute if score @s General.Object.Tick matches 27 run tp @s ~ ~1 ~ ~ ~
        execute if score @s General.Object.Tick matches 28 run tp @s ~ ~0.5 ~ ~ ~
        execute if score @s General.Object.Tick matches 29 run tp @s ~ ~0.25 ~ ~ ~
    # 上昇の頂点でプレイヤーのほうを見る
        execute if score @s General.Object.Tick matches 29 facing entity @p[distance=..64] feet run tp @s ~ ~ ~ ~ 90
    # 落下する
        execute if score @s General.Object.Tick matches 30 run function asset:object/2043.lastboss_ice_sword/tick/fall_start

# 着地以降の処理
    execute if entity @s[tag=2043.Landed] run function asset:object/2043.lastboss_ice_sword/tick/landing/

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# Super、ただし着地後は必要なくなるので実行しない
    execute if entity @s[tag=!2043.Landed] run function asset:object/super.tick

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
