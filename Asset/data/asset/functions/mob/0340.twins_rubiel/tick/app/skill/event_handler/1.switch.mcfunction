#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch
#
# 各スキルのイベントハンドラへの処理振り分け
#
# @within function asset:mob/0340.twins_rubiel/tick/

###########################################################################
# 汎用

## 登場演出
    execute if entity @s[tag=9G.Skill.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/00_start/1.main

## 武器持ち替え
    # 刀
        execute if entity @s[tag=9G.Skill.Kt.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/01_kt_start/1.main
    # 鎌
        execute if entity @s[tag=9G.Skill.Sc.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/11_sc_start/1.main

## ガード
    # 刀
        execute if entity @s[tag=9G.Skill.Kt.Guard] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/1.main

## 怯み・開始
    execute if entity @s[tag=9G.Skill.Damage.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_1_damage_start/1.main
    ## 怯み・ダウン中
        execute if entity @s[tag=9G.Skill.Damage.Down] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_2_damage_down/1.main
        ## 怯み・終了
            execute if entity @s[tag=9G.Skill.Damage.End] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/1.main
    ## 怯み・スタン開始
        execute if entity @s[tag=9G.Skill.Damage.Stun.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_4_damage_stun_start/1.main
        ## 怯み・スタン中
            execute if entity @s[tag=9G.Skill.Damage.Stun] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/1.main

## 怯みかばい攻撃
    execute if entity @s[tag=9G.Skill.Cover] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/1.main

###########################################################################
# 刀

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
# 鎌

## 待機
    execute if entity @s[tag=9G.Skill.Sc.Idle] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/1.main

## ワープ斬り
    execute if entity @s[tag=9G.Skill.Sc.Warp] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/1.main

###########################################################################
# シンクロスキル

## 集合
    execute if entity @s[tag=9G.Skill.Sync.Goalong] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/30_sync_goalong/1.main

## 交差攻撃
    execute if entity @s[tag=9G.Skill.Sync.Crossfire] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_1_sync_crossfire/1.main
    ## 交差攻撃・斬り上げ
        execute if entity @s[tag=9G.Skill.Sync.Crossfire.Upper] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/1.main

## ぶん投げ
    execute if entity @s[tag=9G.Skill.Sync.Throw] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main
