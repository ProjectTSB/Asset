#> asset:object/1059.book_of_hero/tick/kill
#
# 消滅処理
#
# @within function asset:object/1059.book_of_hero/tick/

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0.2 30
    playsound entity.zombie.break_wooden_door neutral @a ~ ~ ~ 0.2 0.7 0

# 消える
    kill @s
