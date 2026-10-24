#> asset:object/1204.bouncy_ball/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1204/hit_block

# 反射距離を何ブロック先が埋まってるかで調整する
    execute unless block ^ ^ ^0.8 #lib:no_collision/ run scoreboard players set $Speed Lib 8
    execute unless block ^ ^ ^0.4 #lib:no_collision/ run scoreboard players set $Speed Lib 4
    function lib:reflection_bullet/
#vfx
    playsound minecraft:block.slime_block.fall player @a ~ ~ ~ 1.0 1 0.0
