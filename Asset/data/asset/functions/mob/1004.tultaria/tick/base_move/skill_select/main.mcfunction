#> asset:mob/1004.tultaria/tick/base_move/skill_select/main
#
#
#
# @within function asset:mob/1004.tultaria/tick/**
#> private
# @private
    #declare score_holder $Random

# ミニスラッシュのカウントをリセット
    scoreboard players reset @s RW.MiniSlashCount

# 通常行動停止タグ付与
    tag @s add RW.InAction

# 小技出しましたタグを消す
    tag @s remove RW.MiniSkillUsed

# スコアを0に戻す
    scoreboard players set @s RW.Tick -10
    scoreboard players set @s RW.LoopCount 0

# チェイス停止
    kill @e[tag=RW.ChaseMarker]

# 属性をランダムに選択
# TODO: あとで個人用ストレージにしておくこと
    # 要素がない場合は再付与
        execute if data storage rw_storage: Tultaria{Element:[]} run data modify storage rw_storage: Element set value [Fire,Water,Thunder]
    # ストレージの要素数を取得
        execute store result score $Element Temporary run data get storage rw_storage: Element
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # 要素数で剰余算
        scoreboard players operation $Random Temporary %= $Element Temporary
    # 選択

    # フェイズ1
        execute if entity @s[scores={RW.Phase=1}] run scoreboard players operation $Random Temporary %= $6 Const
    # フェイズ2(拡散ショットを解禁)
        execute if entity @s[scores={RW.Phase=2}] run scoreboard players operation $Random Temporary %= $7 Const
    # フェイズ3(スターフューリーを解禁)
        execute if entity @s[scores={RW.Phase=3}] run scoreboard players operation $Random Temporary %= $8 Const

# 行動をランダムに選択
#    # 疑似乱数取得
#        execute store result score $Random Temporary run function lib:random/
#    # フェイズ1
#        execute if entity @s[scores={RW.Phase=1}] run scoreboard players operation $Random Temporary %= $6 Const
#    # フェイズ2(拡散ショットを解禁)
#        execute if entity @s[scores={RW.Phase=2}] run scoreboard players operation $Random Temporary %= $7 Const
#    # フェイズ3(スターフューリーを解禁)
#        execute if entity @s[scores={RW.Phase=3}] run scoreboard players operation $Random Temporary %= $8 Const

# デバッグ用、実行する技を確定させる
    scoreboard players set $Random Temporary 13
    tag @s add RW.Skill.BlazingCombo

# スキル選択
#    execute if score $Random Temporary matches 1 run tag @s add RW.Skill.Thunder
#    execute if score $Random Temporary matches 2 run tag @s add RW.Skill.AncientLight
#    execute if score $Random Temporary matches 3 run tag @s add RW.Skill.FreezingShred
#    execute if score $Random Temporary matches 4 run tag @s add RW.Skill.BlazingSlash
#    execute if score $Random Temporary matches 5 run tag @s add RW.Skill.LightningStab
#    execute if score $Random Temporary matches 6 run tag @s add RW.Skill.SpreadShot
#    execute if score $Random Temporary matches 7 run tag @s add RW.Skill.Starfury
#    execute if score $Random Temporary matches 8 run tag @s add RW.Skill.MoveShot
#    execute if score $Random Temporary matches 9 run tag @s add RW.Skill.AimingLaser
#    execute if score $Random Temporary matches 10 run tag @s add RW.Skill.BlazingCombo
#    execute if score $Random Temporary matches 11 run tag @s add RW.Skill.SwordRain
#    execute if score $Random Temporary matches 12 run tag @s add RW.Skill.HomingShot
#    execute if score $Random Temporary matches 13 run tag @s add RW.Skill.Hellfire

# リセット
    scoreboard players reset $Random Temporary

# アニメストップ
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/stop
