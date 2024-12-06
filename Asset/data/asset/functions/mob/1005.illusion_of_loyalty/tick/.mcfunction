#> asset:mob/1005.illusion_of_loyalty/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1005/tick


# スコア加算
#    scoreboard players add @s[tag=!RX.TickLock] RX.Tick 1

# 演出
    particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0 2

# モデルにタグ付与
    tag @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] add RX.ModelRoot.Target

# 最寄りのモデルのRootを自身の座標にもってくる
    execute as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run tp @s ~ ~ ~

# モデルをプレイヤーに向ける
    execute as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# リセット
    tag @e[type=item_display,tag=RX.ModelRoot.Target] remove RX.ModelRoot.Target
