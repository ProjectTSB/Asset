#> asset:mob/0311.blazing_inferno/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/311/tick

# 最寄りのモデルのRootにタグ付与
    tag @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] add 8N.ModelRoot.Target

# モデルをこっちに向かす
    execute if entity @s[tag=8N.PlayerFacing] as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~ 0

# 最寄りのモデルを自分と同じ向きにする
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# こっちを向く
    execute if entity @s[tag=8N.PlayerFacing] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# Tick加算
    scoreboard players add @s General.Mob.Tick 1

# イントロをまだやってないなら、イントロをやる
    execute unless entity @s[tag=8N.IntroFinish] run function asset:mob/0311.blazing_inferno/tick/intro/

# イントロが終了しているなら、基本動作を実行
    execute if entity @s[tag=8N.IntroFinish] run function asset:mob/0311.blazing_inferno/tick/base_move/

# リセット
    tag @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] remove 8N.ModelRoot.Target
