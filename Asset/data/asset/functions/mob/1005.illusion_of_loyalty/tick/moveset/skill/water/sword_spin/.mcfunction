#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/
#
# 剣をまといつつ追いかけてくる
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 回転中のダメージ
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score @s General.Mob.Tick matches 0..80 if score $Interval Temporary matches 0 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/spin_damage

# プレイヤーのほうを向く
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..128] feet run tp @s ~ ~ ~ ~ 0

# しばらく移動
    execute if score @s General.Mob.Tick matches 20..70 run tp @s ^ ^ ^0.2
    execute if score @s General.Mob.Tick matches 70..75 run tp @s ^ ^ ^0.1
    execute if score @s General.Mob.Tick matches 75..80 run tp @s ^ ^ ^0.05

# 剣を開放するアニメ
    execute if score @s General.Mob.Tick matches 74 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_1_left/tween {to_frame:0,duration:1}

# 剣を解放
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/release_swords

# 元の体勢へ
    execute if score @s General.Mob.Tick matches 140 as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/neutral_air/tween {to_frame:0,duration:10}

# 剣を破壊
    execute if score @s General.Mob.Tick matches 160 run kill @e[type=item_display,scores={ObjectID=2053},distance=..64]


# ワープ
    execute if score @s General.Mob.Tick matches 160 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
