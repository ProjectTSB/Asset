#> asset:artifact/0165.blessing_leggings/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/165/tick/

# 落下速度低下付与
    effect give @s minecraft:slow_falling 1 1

# テレポート
    execute in minecraft:overworld run tp @s 23 3 24

# 演出
    particle portal 23 3 24 0 0 0 2 250 force @a
    particle effect 23 3 24 0 10 0 0.1 250 force @a
    playsound entity.illusioner.prepare_blindness player @s 23 3 24 1 0 1
