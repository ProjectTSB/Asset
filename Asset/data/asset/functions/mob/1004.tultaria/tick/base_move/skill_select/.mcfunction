#> asset:mob/1004.tultaria/tick/base_move/skill_select/
#
# 属性に応じたスキルを選択する
#
# @within function asset:mob/1004.tultaria/tick/**

#> private
# @private
    #declare score_holder $Random

# 通常行動停止タグ付与
    tag @s add RW.InAction

# スコアを0に戻す
    scoreboard players set @s RW.Tick -10
    scoreboard players set @s RW.LoopCount 0

# 属性をランダムに選択
    # 要素がない場合は再付与
        execute if data storage asset:context this.Skill{List:[]} run data modify storage asset:context this.Skill.List set value [0,1,2]
    # 第一形態かつ光モードのときはリストを一個だけにする
        execute if entity @s[tag=RW.Mode.Light,scores={RW.Phase=1}] run data modify storage asset:context this.Skill.List set value [0]
    # ストレージの要素数を取得
        execute store result storage asset:context this.Skill.Count int 1 run data get storage asset:context this.Skill.List
    # 取得した要素数を使ってランダムに技を選ぶ
        execute unless data storage asset:context this.Skill{Count:1} run function asset:mob/1004.tultaria/tick/base_move/skill_select/roll.m with storage asset:context this.Skill
    # 要素数１個しかないとき
        execute if data storage asset:context this.Skill{Count:1} run function asset:mob/1004.tultaria/tick/base_move/skill_select/only_one_skill
