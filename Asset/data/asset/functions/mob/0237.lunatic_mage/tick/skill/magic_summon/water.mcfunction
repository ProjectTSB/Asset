#> asset:mob/0237.lunatic_mage/tick/skill/magic_summon/water
#
# 水魔法を召喚します
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/**

#> Private
# @private
    #declare score_holder $AttackCount

# 難易度値に比例して攻撃回数を設定
# (Difficulty * 2 + 1)
    function api:global_vars/get_difficulty
    execute store result score $AttackCount Temporary run data get storage api: Return.Difficulty 2
    execute store result storage api: Argument.FieldOverride.AttackCount int 1 run scoreboard players add $AttackCount Temporary 1

# ハード以上なら的中時に鈍足を付与する設定を追加
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Slowness set value true

# 召喚の設定
    data modify storage api: Argument.ID set value 2074
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Water
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $AttackCount Temporary
