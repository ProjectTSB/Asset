#> asset:mob/0055.hetukedah/tick/skill_select
#
# モブが持つスキル一覧、ランダムに実行
#
# @within function asset:mob/0055.hetukedah/tick/

#> Private
# @private
    #declare score_holder $Random

# Tick0に戻す
    scoreboard players set @s General.Mob.Tick 0

# 行動中としてタグ付与
    tag @s add 1J.InAction

# ランダム
# 乱数によるスキル選択
        data modify storage lib: Args.key set value "55.Skill"
        data modify storage lib: Args.max set value 4
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # ハードだったら動作カウント増やす
        execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players add @s 1J.MoveCount 1
    # デバッグ
        #scoreboard players set $Random Temporary 0
        #scoreboard players set @s 1J.MoveCount 5
    # 数回に一回の行動は固定
        execute if score @s 1J.MoveCount matches 5.. run tag @s add 1J.Skill.Summon
        execute if score @s 1J.MoveCount matches 5.. run scoreboard players reset $Random Temporary
    # スキル選択
        execute if score $Random Temporary matches 0 run tag @s add 1J.Skill.OteteBeam
        execute if score $Random Temporary matches 1 run tag @s add 1J.Skill.Explosion
        execute if score $Random Temporary matches 2 run tag @s add 1J.Skill.FlameThrower
        execute if score $Random Temporary matches 3 run tag @s add 1J.Skill.Charge
    # リセット
        scoreboard players reset $Random Temporary
