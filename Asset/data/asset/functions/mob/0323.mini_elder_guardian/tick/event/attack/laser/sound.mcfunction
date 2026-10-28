#> asset:mob/0323.mini_elder_guardian/tick/event/attack/laser/sound
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/event/attack/laser/

#> Private
# @private
    #declare score_holder $SoundInterval

# 実行時間を移す
    scoreboard players operation $SoundInterval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $SoundInterval Temporary %= $15 Const
    execute if score $SoundInterval Temporary matches 0 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 2
    scoreboard players reset $SoundInterval Temporary
