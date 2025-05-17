#> asset:object/1015.call_fish/tick/find_target/ready
#
#
#
# @within function asset:object/1015.call_fish/tick/find_target/

# 既にターゲットがいたならreturn (範囲が広いため、@eが少なくなるようにstorageで判定する)
    execute if data storage asset:temp 1015{Hit:1b} run return fail

# 再帰でターゲットとの間にブロックがないかチェックする
    execute facing entity @s feet run function asset:object/1015.call_fish/tick/find_target/recursive

# リセット
    scoreboard players reset $RecursiveLimit Temporary
