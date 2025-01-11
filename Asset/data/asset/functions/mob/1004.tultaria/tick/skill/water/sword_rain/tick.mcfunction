#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick
#
# 剣が降ってきてダメージエリアを展開、その後なんかしてくる
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 構えて攻撃のパターンを決定
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/windup

# 攻撃
    # 1
        execute if entity @s[tag=RW.Skill.SwordRain.1] at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/1
    # 2
        execute if entity @s[tag=RW.Skill.SwordRain.2] at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/2
    # 3
        execute if entity @s[tag=RW.Skill.SwordRain.3] at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/3
    # 4
        execute if entity @s[tag=RW.Skill.SwordRain.4] at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/4
