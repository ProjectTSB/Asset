#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch
#
# 各スキルのイベントハンドラへの処理振り分け
#
# @within function asset:mob/0340.twins_rubiel/tick/2.tick

###########################################################################
## 汎用

## 登場演出
    execute if entity @s[tag=9G.Skill.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/00_start/1.main

## 武器持ち替え
    ## 刀
        # execute if entity @s[tag=] run function

###########################################################################
## 刀

## 待機
    execute if entity @s[tag=9G.Skill.Kt.Idle] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/1.main

## 移動斬り
    execute if entity @s[tag=9G.Skill.Kt.Moveslash] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/1.main
    ## 移動突き
        execute if entity @s[tag=9G.Skill.Kt.MoveToSpear] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/1.main
        ## 移動突き・怯み
            execute if entity @s[tag=9G.Skill.Kt.Damage.Spear] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/1.main
    ## 納刀・真空斬り
        execute if entity @s[tag=9G.Skill.Kt.VacuSlash] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/1.main

## 斬り下がり
    execute if entity @s[tag=9G.Skill.Kt.Doubleslash] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/1.main

## ワープ連撃
    execute if entity @s[tag=9G.Skill.Kt.Warp] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/1.main

## 納刀
    execute if entity @s[tag=9G.Skill.Kt.Sheathe] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/1.main
    ## 納刀待機・十文字
        execute if entity @s[tag=9G.Skill.Kt.Sheathe.Wait.Jumonji] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_2_kt_sheathe_wait_jumonji/1.main
        ## 瑠火伊流・十文字
            execute if entity @s[tag=9G.Skill.Kt.Draw.Jumonji] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/1.main
        ## 居合斬り・怯み
            execute if entity @s[tag=9G.Skill.Kt.Damage.Draw] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_4_kt_sheathe_damage/1.main
        ## カウンター居合斬り
            execute if entity @s[tag=9G.Skill.Kt.Sheathe.Counter] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/1.main

## 飛び込み斬り
    execute if entity @s[tag=9G.Skill.Kt.JumpSlash] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/1.main
    ## 水平斬り
        execute if entity @s[tag=9G.Skill.Kt.Horizon] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/1.main
        ## 二刀流水平斬り
            execute if entity @s[tag=9G.Skill.Kt.Horizon.Double] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/1.main
            ## 二刀流縦回転斬り
                execute if entity @s[tag=9G.Skill.Kt.DashAttack] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/1.main
        ## ナイフ投げ
            execute if entity @s[tag=9G.Skill.Kt.BackJump] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/1.main

## 掴み
    execute if entity @s[tag=9G.Skill.Kt.Throw.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/1.main
    ## 大外刈り
        execute if entity @s[tag=9G.Skill.Kt.Throw] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main

###########################################################################
## シンクロスキル

## 集合
    execute if entity @s[tag=9G.Skill.Sync.Goalong] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/30_sync_goalong/1.main
