#> asset:mob/0374.lightning_magic/tick/3.on_ground
#
# 地面に着いた後の処理
#
# @within function asset:mob/0374.lightning_magic/tick/1

 #> Private
# @private
    #declare score_holder $Interval

# 一定間隔で実行
    scoreboard players operation $Interval Temporary = @s AE.Tick
    scoreboard players operation $Interval Temporary %= $8 Const
    execute if score $Interval Temporary matches 0 at @s rotated ~ 0 run function asset:mob/0374.lightning_magic/tick/4.thunder
    scoreboard players reset $Interval Temporary

# プレイヤーの方向へ誘導する
# ハード以上で弾速強化
    execute if predicate api:global_vars/difficulty/max/normal facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.15 ~ ~
    execute if predicate api:global_vars/difficulty/min/hard facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~
