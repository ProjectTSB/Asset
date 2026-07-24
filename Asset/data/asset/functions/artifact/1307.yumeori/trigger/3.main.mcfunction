#> asset:artifact/1307.yumeori/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1307.yumeori/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 player @a ~ ~ ~ 1 1.8
    # particle flash ~ ~ ~ 0 0 0 0 1

# 曲射用バフがあるかつ、上を向いているなら曲射
    data modify storage api: Argument.ID set value 380
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect if entity @s[x_rotation=-90..-35] run return run function asset:artifact/1307.yumeori/trigger/curved_shot

# 何もなければ普通の矢を発射
    function asset:artifact/1307.yumeori/trigger/neutral_arrow
