#> asset:mob/0376.convict_v2/tick/common/spread_tp
#
#
#
# @within function asset:mob/0376.convict_v2/tick/**

# 実行前に拡散値がされていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,0d],[3d,3d]]
# 拡散する
    function lib:spread_entity/

# 埋まり対策（これで埋まってたら知らん）
    execute at @s unless block ~ ~ ~ #lib:no_collision/ run data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,0d],[3d,3d]]
    execute at @s unless block ~ ~ ~ #lib:no_collision/ run function lib:spread_entity/
    execute at @s unless block ~ ~ ~ #lib:no_collision/ run data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,0d],[3d,3d]]
    execute at @s unless block ~ ~ ~ #lib:no_collision/ run function lib:spread_entity/

# ディスプレイもってくる用
    execute at @s run function asset:mob/0376.convict_v2/tick/common/tp

    execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1
    execute at @s run particle portal ~ ~0.5 ~ 0 1 0 0 30
