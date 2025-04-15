#> asset:mob/0365.frestchika/tick/intro/battle_start
#
#
#
# @within function asset:mob/0365.frestchika/tick/intro/

# タグ付与
    tag @s remove A5.Moveset.Intro
    tag @s add A5.Moveset.BaseMove

# スコアリセット
    scoreboard players reset @s General.Mob.Tick

# フェイズ進める
    scoreboard players set @s A5.Phase 1

# 無敵解除
    tag @s remove Uninterferable
    data modify entity @s Invulnerable set value 0b

# アニメーション
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 5}
