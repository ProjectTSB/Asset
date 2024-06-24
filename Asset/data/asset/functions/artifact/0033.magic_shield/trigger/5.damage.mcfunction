#> asset:artifact/0033.magic_shield/trigger/5.damage
#
# 被ダメ時の処理
#
# @within function asset:artifact/0033.magic_shield/trigger/4.damage_trigger

# 演出
    particle block iron_block ~ ~1 ~ 0.5 0.5 0.5 0.2 60
    playsound block.glass.break player @a ~ ~ ~ 1 0.6 0

# タグ消し
    tag @s remove X.MagicShield

# バフを削除
    data modify storage api: Argument.ID set value 201
    function api:entity/mob/effect/remove/from_id
