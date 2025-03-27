#> asset:mob/1005.illusion_of_loyalty/tick/moveset/reset/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/**

# アニメ再生
    execute as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/neutral_air/tween {to_frame:0,duration:1}

# タグ削除
    function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset/tags
    tag @s remove RX.InAction

# スコアを戻す
    scoreboard players reset @s General.Mob.Tick
