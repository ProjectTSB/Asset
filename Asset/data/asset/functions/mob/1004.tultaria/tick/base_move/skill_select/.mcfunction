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
    scoreboard players set @s General.Mob.Tick -10
    scoreboard players set @s RW.LoopCount 0

# 属性をランダムに選択
    # 光モードのときはリストを一個だけにする
        execute if entity @s[tag=RW.Mode.Light,scores={RW.Phase=1..}] run data modify storage asset:context this.Skill.List set value [0]
    # ストレージの要素数を取得
        execute store result storage asset:context this.Skill.Count int 1 run data get storage asset:context this.Skill.List
    # 取得した要素数を使ってランダムに技を選ぶ
        function asset:mob/1004.tultaria/tick/base_move/skill_select/roll.m with storage asset:context this.Skill
