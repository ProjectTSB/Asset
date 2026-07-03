#> asset:object/1052.maid/tick/action
#
#
#
# @within function asset:object/1052.maid/tick/

# 敵の方向を見る
    tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..14,sort=nearest,limit=1]

# 動き止める
    effect give @s slowness 1 127 true

# スコアを増やしていく
    scoreboard players add @s 1052.ActionTime 1

# 一定のスコアに達したら発砲
    execute if score @s 1052.ActionTime matches 3.. run function asset:object/1052.maid/tick/shot/main

# 一定回数撃ったらクールダウンを入れる
    execute if score @s 1052.ShotCount matches 6.. run scoreboard players set @s 1052.ActionTime -50
    execute if score @s 1052.ShotCount matches 6.. run scoreboard players set @s 1052.ShotCount 0
