#> asset:artifact/0991.soul_mate/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0991.soul_mate/dis_equip/

# 演出
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.8
    execute anchored eyes positioned ^ ^ ^ run particle soul ~ ~0.5 ~ 0 0 0 0.01 5

# 効果
    data modify storage api: Argument.ID set value 264
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
# メッセージ
    tellraw @a[tag=RJ.SoulMate] [{"selector":"@s","color":"dark_red"},{"text":"がソウルメイトを脱退しました。","color":"dark_red"}]

# タグ付与
    tag @s remove RJ.SoulMate
