#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

#> インターバル用
# @private
#declare score_holder $Interval

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/windup
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_3_right_loop/tween {to_frame:0,duration:1}

# 予告線が出る
    execute if score @s General.Mob.Tick matches 0..60 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert

# プレイヤーのほうにゆっくりと向く
    function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/facing_tarfet.m with storage asset:context this

# 数Tickごとにレーザー
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 if score @s General.Mob.Tick matches 60..80 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/shoot

# ニュートラルに戻る
    execute if score @s General.Mob.Tick matches 100 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/neutral_air/tween {to_frame:0,duration:20}

# リセット
    execute if score @s General.Mob.Tick matches 120 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset/
