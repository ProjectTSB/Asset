#> asset:artifact/0991.soul_mate/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0991.soul_mate/dis_equip/

#> private
# @private
    #declare score_holder $Difficulty

# 演出
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.8
    execute anchored eyes positioned ^ ^ ^ run particle soul ~ ~0.5 ~ 0 0 0 0.01 5

# メッセージ
    tellraw @a[tag=RJ.SoulMate] [{"selector":"@s","color":"dark_red"},{"text":"がソウルメイトを脱退しました。","color":"dark_red"}]

# 効果
    data modify storage api: Argument.ID set value 264
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
# タグ付与
    tag @s remove RJ.SoulMate

# 変数を取得
    function api:global_vars/get_difficulty
# ペナルティを課す
    data modify storage api: Argument.ID set value 296
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    execute store result storage api: Argument.Duration int 130 run data get storage api: Return.Difficulty
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
