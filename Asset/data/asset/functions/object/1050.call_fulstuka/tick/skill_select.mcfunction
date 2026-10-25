#> asset:object/1050.call_fulstuka/tick/skill_select
#
#
#
# @within function asset:object/1050.call_fulstuka/tick/

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..1

# デバッグのコマンド
    # scoreboard players set $Random Temporary 1


# 周囲に敵が居ない場合、銃にする
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10] run scoreboard players set $Random Temporary 0

# 周囲に敵がいる場合剣にする
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run scoreboard players set $Random Temporary 1

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 1050.SkillGun
    execute if score $Random Temporary matches 1 run tag @s add 1050.SkillMelee



# リセット
    scoreboard players reset $Random Temporary
