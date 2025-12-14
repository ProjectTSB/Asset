#> asset:object/2043.lastboss_ice_sword/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2043/hit_block

# 移動キャンセル
    data modify storage asset:context this.MovePerStep set value 0
    data modify storage asset:context this.StepPerTick set value 0

# 位置調整
    tp @s ~ ~2 ~ ~ ~

# スコアリセット
    scoreboard players reset @s General.Object.Tick

# タグ付与
    tag @s add 2043.Landed

# 演出
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.return neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.iron_golem.hurt neutral @a ~ ~ ~ 2 2
    particle dust 0.667 1 0.976 1 ~ ~0.8 ~ 0.1 0.1 0.1 0 50
    particle end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10

# 図形表示
    execute positioned ~ ~1 ~ rotated 0 0 run function asset:object/2043.lastboss_ice_sword/hit_block/shape
