#> asset:mob/0301.karmic/tick/06.sword_tackle/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_run/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0..20 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 演出
    execute if score @s General.Mob.Tick matches 26..33 rotated ~ 0 positioned ^ ^ ^1.4 run function asset:mob/0301.karmic/tick/common/tp
# プレイヤー近づいたらスコアぶっ飛ばす
    execute if score @s General.Mob.Tick matches 26..33 if entity @a[gamemode=!spectator,distance=..6] run scoreboard players set @s General.Mob.Tick 33

# モーション変化
    execute if score @s General.Mob.Tick matches 33 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_run_slash/play
    execute if score @s General.Mob.Tick matches 33..51 rotated ~ 0 positioned ^ ^ ^0.5 run function asset:mob/0301.karmic/tick/common/tp

# 回転
    execute if score @s General.Mob.Tick matches 41..51 run function asset:mob/0301.karmic/tick/06.sword_tackle/damage

# 惰性
    execute if score @s General.Mob.Tick matches 51..60 rotated ~ 0 positioned ^ ^ ^0.1 run function asset:mob/0301.karmic/tick/common/tp

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 60 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 攻撃
    execute if score @s General.Mob.Tick matches 78 positioned ~ ~1.3 ~ positioned ^ ^ ^0.3 run function asset:mob/0301.karmic/tick/common/shot_strong/main
# 移動
    execute if score @s General.Mob.Tick matches 78..80 rotated ~ 0 positioned ^ ^ ^-1 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 81..83 rotated ~ 0 positioned ^ ^ ^-0.25 run function asset:mob/0301.karmic/tick/common/tp

# リセット
    execute if score @s General.Mob.Tick matches 103 run function asset:mob/0301.karmic/tick/06.sword_tackle/end
