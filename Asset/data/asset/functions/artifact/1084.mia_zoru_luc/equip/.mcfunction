#> asset:artifact/1084.mia_zoru_luc/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1084/equip/


# 演出
    playsound entity.ravager.hurt player @a ~ ~ ~ 1 0.7
    particle block redstone_block ~ ~1.3 ~ 0 0 0 1 20

# エフェクトを付与
    data modify storage api: Argument.ID set value 619
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
