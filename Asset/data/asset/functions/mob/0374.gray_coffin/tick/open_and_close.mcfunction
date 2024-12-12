#> asset:mob/0374.gray_coffin/tick/open_and_close
#
# 開閉を繰り返す
#
# @within function asset:mob/0374.gray_coffin/tick/

#> Private
# @private
    #declare score_holder $Interval
    #declare score_holder $201

# 201を定義
    scoreboard players set $201 Temporary 201

# 一定周期で開閉を繰り返す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $201 Temporary

# ﾊﾟｯｶｰﾝ
    execute if score $Interval Temporary matches 100 on passengers run data modify entity @s item.tag.CustomModelData set value 20449
    execute if score $Interval Temporary matches 100 run playsound block.chest.open hostile @a ~ ~ ~ 1 0.5 0

# 召喚
    execute if score $Interval Temporary matches 120 positioned ^ ^2.5 ^0.6 summon marker run function asset:mob/0374.gray_coffin/tick/summon
    execute if score $Interval Temporary matches 140 positioned ^ ^2.5 ^0.3 summon marker run function asset:mob/0374.gray_coffin/tick/summon
    execute if score $Interval Temporary matches 160 positioned ^ ^2.5 ^0.0 summon marker run function asset:mob/0374.gray_coffin/tick/summon
    execute if score $Interval Temporary matches 180 positioned ^ ^2.5 ^-0.3 summon marker run function asset:mob/0374.gray_coffin/tick/summon

# 閉じる
    execute if score $Interval Temporary matches 200 on passengers run data modify entity @s item.tag.CustomModelData set value 20448
    execute if score $Interval Temporary matches 200 run playsound block.chest.close hostile @a ~ ~ ~ 1 0.5 0

# リセット
    scoreboard players reset $Interval Temporary
    scoreboard players reset $201 Temporary
