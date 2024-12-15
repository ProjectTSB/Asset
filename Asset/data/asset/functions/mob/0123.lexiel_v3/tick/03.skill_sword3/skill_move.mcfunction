#> asset:mob/0123.lexiel_v3/tick/03.skill_sword3/skill_move
#
#
#
# @within function
#   asset:mob/0123.lexiel_v3/tick/03.skill_sword3/main
#   asset:mob/0123.lexiel_v3/tick/03.skill_sword3/tackle

# ポータル削除
    kill @e[type=marker,scores={ObjectID=2102},distance=..70]

# その場にTP
    execute facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute at @s run function asset:mob/0123.lexiel_v3/tick/common/tp_vfx

# 時間無理やり変更
    scoreboard players set @s General.Mob.Tick 8

# スキル入れ替え
    tag @s add 3F.SkillSword2
    tag @s remove 3F.SkillSword3

# モーション戻す
    execute as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/neutral/play
