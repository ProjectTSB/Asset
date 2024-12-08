#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport/
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/reset
#   asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport/

#> 幻想のタグ
# @private
#declare tag RX.ModelRoot
#declare tag RX.ModelRoot.Target

# モデルにタグ付与
    tag @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] add RX.ModelRoot.Target

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,1.5d],[16d,16d]]
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function lib:spread_entity/

# 最寄りのモデルのRootを自身の座標にもってくる
    execute at @s run tp @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~

# リセット
    tag @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] remove RX.ModelRoot.Target

# 同じIDのモブが付近にいなければ、マーカーの位置にオブジェクト召喚
    execute at @s unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..5,limit=1] run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport/vfx
    execute at @s unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..5,limit=1] run tp @s ~ ~ ~ ~ ~

# 同じIDのモブが付近にいたら再帰する
    execute at @s if entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..5,limit=1] run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport/
