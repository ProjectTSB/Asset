#> asset:mob/0327.eclael/tick/app.2.skill_event
#
# 付与されているスキルタグに応じて処理を振り分ける
#
# @within function asset:mob/0327.eclael/tick/

###########################################################################
## 汎用

## 登場演出
    execute if entity @s[tag=93.Skill.Former.Start] run function asset:mob/0327.eclael/tick/app.skill_events/29_former_start/1.main

## 抜刀
    execute if entity @s[tag=93.Skill.Latter.Start] run function asset:mob/0327.eclael/tick/app.skill_events/26_latter_start/1.main

###########################################################################
## 前半

## 待機
    execute if entity @s[tag=93.Skill.Former.Idle] run function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/1.main
    ## 居眠り
        execute if entity @s[tag=93.Skill.Former.Idle.Sleep] run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main

## 居合斬り
    execute if entity @s[tag=93.Skill.Former.Iai] run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main
    ## 居合斬り・怯み
        execute if entity @s[tag=93.Skill.Former.Iai.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/1.main

## 連続斬り
    execute if entity @s[tag=93.Skill.Former.Slash] run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

## 射撃
    execute if entity @s[tag=93.Skill.Former.Shot] run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main

## 曲射
    execute if entity @s[tag=93.Skill.Former.UpperShot] run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/1.main
    ## 曲射・怯み
        execute if entity @s[tag=93.Skill.Former.UpperShot.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/1.main

## 魔法
    execute if entity @s[tag=93.Skill.Former.Magic] run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/1.main

## 簡易魔法
    execute if entity @s[tag=93.Skill.Former.ShortMagic] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main

###########################################################################
## 後半

## 待機
    execute if entity @s[tag=93.Skill.Latter.Idle] run function asset:mob/0327.eclael/tick/app.skill_events/10_latter_idle/1.main

## 怯み
    execute if entity @s[tag=93.Skill.Latter.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/1.main
    ## 怯み・バク転
        execute if entity @s[tag=93.Skill.Latter.Damage.Move] run function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/1.main

## ガード
    execute if entity @s[tag=93.Skill.Latter.Guard.0] run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.1.main_0
    execute if entity @s[tag=93.Skill.Latter.Guard.1] run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.2.main_1
    execute if entity @s[tag=93.Skill.Latter.Guard.2] run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.3.main_2

## 追加技
# 全体落雷
    execute if entity @s[tag=93.Skill.FieldThunder] run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/1.main

# 天泣
    execute if entity @s[tag=93.Skill.Fall] run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 移動斬り
    execute if entity @s[tag=93.Skill.MoveSlash] run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main

# 雷斗星刃・当流
    execute if entity @s[tag=93.Skill.FieldSlash] run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/main

# 残心
    execute if entity @s[tag=93.Skill.Beam] run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/main
    # 居合
        execute if entity @s[tag=93.Skill.IaiMove] run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main
        execute if entity @s[tag=93.Skill.IaiMove.Turn] run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main_turn

# 点睛
    execute if entity @s[tag=93.Skill.Tensei] run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main

# 雷斗星刃・至円
    execute if entity @s[tag=93.Skill.Circle] run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/main

# 曲射
    execute if entity @s[tag=93.Skill.UpperShot] run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main
