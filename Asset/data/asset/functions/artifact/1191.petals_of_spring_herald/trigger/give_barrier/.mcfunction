#> asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/
#
#
#
# @within function
#   asset:artifact/1191.petals_of_spring_herald/trigger/3.main
#   asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/

# 最後尾のUserIDの対象として実行
    execute store result score $UserID Temporary run data get storage asset:temp Target.To[-1]
    execute as @a[tag=Receiver] if score @s UserID = $UserID Temporary run function asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/effect
    scoreboard players reset $UserID Temporary

# 最後尾の要素を削除
    data remove storage asset:temp Target.To[-1]
    data remove storage asset:temp Target.Over[-1]

# 再帰
    execute if data storage asset:temp Target.To[0] run function asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/
