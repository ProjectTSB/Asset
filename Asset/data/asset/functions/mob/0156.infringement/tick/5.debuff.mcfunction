#> asset:mob/0156.infringement/tick/5.debuff
#
# 自爆時のデバフを付与
#
# @within function asset:mob/0156.infringement/tick/4.explode

#> Private
# @private
    #declare score_holder $EffectLv

# 難易度値を取得
    function api:global_vars/get_difficulty

# スコアに代入し、値から1を引く
# このmcfの実行条件がノーマル以上のため、Lv0にはならない
    execute store result score $EffectLv Temporary run data get storage api: Return.Difficulty
    scoreboard players remove $EffectLv Temporary 1

# 侵害エフェクトを付与
    data modify storage api: Argument.ID set value 612
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $EffectLv Temporary
    function api:entity/mob/effect/give

# リセット
    scoreboard players reset $EffectLv Temporary
