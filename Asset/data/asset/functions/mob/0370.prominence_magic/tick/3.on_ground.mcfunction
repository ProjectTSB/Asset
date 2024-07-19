#> asset:mob/0370.prominence_magic/tick/3.on_ground
#
# 地面に着弾したときの挙動
#
# @within function asset:mob/0370.prominence_magic/tick/1

#> Private
# @private
    #declare score_holder $Interval

# 予備動作
    scoreboard players operation $Interval Temporary = @s AA.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 if entity @s[scores={AA.Tick=100..109}] run function asset:mob/0370.prominence_magic/tick/vfx/ready1
    execute if score $Interval Temporary matches 0 if entity @s[scores={AA.Tick=111..119}] run function asset:mob/0370.prominence_magic/tick/vfx/ready2
    execute if score $Interval Temporary matches 0 if entity @s[scores={AA.Tick=121..129}] run function asset:mob/0370.prominence_magic/tick/vfx/ready3
    scoreboard players reset $Interval Temporary

# 1回目の爆発
    execute if entity @s[scores={AA.Tick=110}] run function asset:mob/0370.prominence_magic/tick/4.1st_blast
    execute if entity @s[scores={AA.Tick=130}] run function asset:mob/0370.prominence_magic/tick/5.2nd_blast
    execute if entity @s[scores={AA.Tick=150}] run function asset:mob/0370.prominence_magic/tick/6.3rd_blast



#
