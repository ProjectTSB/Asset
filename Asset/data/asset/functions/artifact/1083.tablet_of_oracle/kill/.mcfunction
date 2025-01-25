#> asset:artifact/1083.tablet_of_oracle/kill/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1083/kill/


# 演出
    playsound minecraft:block.bell.resonate player @a ~ ~ ~ 1 1
    particle minecraft:enchant ~ ~2 ~ 0 0 0 1 100

# 自身と周囲のランダムな2名のプレイヤーにバフを付与
    function asset:artifact/1083.tablet_of_oracle/kill/4.buff
    execute as @a[tag=!this,distance=..20,sort=random,limit=2] at @s run function asset:artifact/1083.tablet_of_oracle/kill/4.buff
