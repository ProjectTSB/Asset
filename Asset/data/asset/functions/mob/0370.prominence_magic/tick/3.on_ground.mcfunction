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
    scoreboard players operation $Interval Temporary %= $8 Const
    execute if score $Interval Temporary matches 0 if entity @s[scores={AA.Tick=100..109}] run function asset:mob/0370.prominence_magic/tick/vfx
    execute if score $Interval Temporary matches 0 if entity @s[scores={AA.Tick=111..129}] run function asset:mob/0370.prominence_magic/tick/4.2nd_blast_ready
  #  execute if score $Interval Temporary matches 0 if entity @s[scores={AA.Tick=131..149}] run function asset:mob/0370.prominence_magic/tick/vfx/ready3
    scoreboard players reset $Interval Temporary

# 1回目の爆発
    execute if entity @s[scores={AA.Tick=110}] run function asset:mob/0370.prominence_magic/tick/damage

# 2回目の爆発
    execute if entity @s[scores={AA.Tick=130}] run function asset:mob/0370.prominence_magic/tick/5.2nd_blast
