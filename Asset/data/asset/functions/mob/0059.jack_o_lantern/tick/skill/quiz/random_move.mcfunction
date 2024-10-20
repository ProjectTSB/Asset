#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move
#
# 不規則に走り回る
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/

# 演出
    execute at @a[distance=..30] run playsound block.note_block.snare hostile @p ~ ~ ~ 0.7 1 0

# 壁に当たったら反射するように、反射Libを使う
    scoreboard players set $Speed Lib 6
    function lib:reflection_bullet/
    execute if predicate lib:random_pass_per/18 at @s run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_rotate

# 自身と偽物に対して
# SpawnMarkerから一定以上離れたら強制的にそっちを向かせる
    execute at @s unless entity @e[type=marker,tag=1N.SpawnMarker,distance=..12] facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..30] feet run tp @s ^ ^ ^1 ~ ~
    execute as @e[type=husk,scores={MobID=224},distance=..40] at @s unless entity @e[type=marker,tag=1N.SpawnMarker,distance=..12] facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..30] feet run tp @s ^ ^ ^1 ~ ~
