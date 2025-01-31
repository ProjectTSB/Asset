#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch
#
# 各スキルのイベントハンドラへの処理振り分け
#
# @within function asset:mob/0339.twins_sapphiel/tick/

###########################################################################
# 汎用

## 登場演出
    execute if entity @s[tag=9F.Skill.Start] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/00_start/1.main

## 武器持ち替え
    # ハンドガン
        execute if entity @s[tag=9F.Skill.Hg.Start] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/01_hg_start/1.main
    # ランチャー
        execute if entity @s[tag=9F.Skill.Lc.Start] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/21_lc_start/1.main

## ガード
    # ハンドガン
        execute if entity @s[tag=9F.Skill.Hg.Guard] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/02_1_hg_guard/1.main

## 怯み・開始
    execute if entity @s[tag=9F.Skill.Damage.Start] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/1.main
    ## 怯み・ダウン中
        execute if entity @s[tag=9F.Skill.Damage.Down] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_2_damage_down/1.main
        ## 怯み・終了
            execute if entity @s[tag=9F.Skill.Damage.End] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_3_damage_end/1.main
    ## 怯み・スタン開始
        execute if entity @s[tag=9F.Skill.Damage.Stun.Start] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_4_damage_stun_start/1.main
        ## 怯み・スタン中
            execute if entity @s[tag=9F.Skill.Damage.Stun] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_5_damage_stun/1.main

## 怯みかばい攻撃
    execute if entity @s[tag=9F.Skill.Cover] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/1.main

###########################################################################
# ハンドガン

## 待機
    execute if entity @s[tag=9F.Skill.Hg.Idle] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/02_hg_idle/1.main

## 射撃
    execute if entity @s[tag=9F.Skill.Hg.Shot] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/1.main
    ## 側転射撃
        execute if entity @s[tag=9F.Skill.Hg.Shot.MoveRight] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_1_hg_shot_move_right/1.main
        execute if entity @s[tag=9F.Skill.Hg.Shot.MoveLeft] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_1_hg_shot_move_left/1.main

## 引き撃ち
    execute if entity @s[tag=9F.Skill.Hg.BackShot] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/04_hg_backshot/1.main

## ライダーキック
    execute if entity @s[tag=9F.Skill.Hg.Riderkick] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/1.main
    ## 回し蹴り
        execute if entity @s[tag=9F.Skill.Hg.Spinkick] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/1.main
        ## 3段蹴り
            execute if entity @s[tag=9F.Skill.Hg.KickCombo] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/1.main

## 正拳突き
    execute if entity @s[tag=9F.Skill.Hg.Punch] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/1.main
    ## 足払い
        execute if entity @s[tag=9F.Skill.Hg.Lowkick] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/1.main
        ## 踏みつけ射撃
            execute if entity @s[tag=9F.Skill.Hg.Stepshot] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_2_hg_stepshot/1.main

## ワープポイント設置
    execute if entity @s[tag=9F.Skill.Hg.Warp.Shot] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/1.main
    ## かかと落とし
        execute if entity @s[tag=9F.Skill.Hg.Warp.Heeloff] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/1.main
        ## 2連回し蹴り
            execute if entity @s[tag=9F.Skill.Hg.Warp.Heelspin] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/1.main

## フルバースト
    execute if entity @s[tag=9F.Skill.Hg.Fullburst.Start] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/1.main
    ## フルバースト・射撃
        execute if entity @s[tag=9F.Skill.Hg.Fullburst.Main] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_2_hg_fullburst_main/1.main
        ## フルバースト・終了
            execute if entity @s[tag=9F.Skill.Hg.Fullburst.End] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/1.main

## リロード
    execute if entity @s[tag=9F.Skill.Hg.Reload] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/09_hg_reload/1.main

## ステップ
    # 右
    execute if entity @s[tag=9F.Skill.Hg.Step.Right] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_1_hg_move_right/1.main
    # 左
    execute if entity @s[tag=9F.Skill.Hg.Step.Left] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/1.main
    # 右左
    execute if entity @s[tag=9F.Skill.Hg.Step.Right2Left] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/1.main
    # 左右
    execute if entity @s[tag=9F.Skill.Hg.Step.Left2Right] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_4_hg_move_left2right/1.main
    # 後
    execute if entity @s[tag=9F.Skill.Hg.Step.Back] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/1.main

###########################################################################
# ランチャー

## ジャンプ
        execute if entity @s[tag=9F.Skill.Lc.Jump] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_1_lc_shot_jump/1.main
    ## エイム
        execute if entity @s[tag=9F.Skill.Lc.Aim] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_2_lc_shot_aim/1.main
        ## 射撃
            execute if entity @s[tag=9F.Skill.Lc.Shot] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/1.main

###########################################################################
# シンクロスキル

## 集合
    execute if entity @s[tag=9F.Skill.Sync.Goalong] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/30_sync_goalong/1.main

## 交差攻撃
    execute if entity @s[tag=9F.Skill.Sync.Crossfire] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_1_sync_crossfire/1.main
    ## 交差攻撃・追撃
        execute if entity @s[tag=9F.Skill.Sync.Crossfire.Pursuit] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_2_sync_crossfire_pursuit/1.main

## ぶん投げ
    execute if entity @s[tag=9F.Skill.Sync.Throw] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/32_1_sync_throw/1.main
