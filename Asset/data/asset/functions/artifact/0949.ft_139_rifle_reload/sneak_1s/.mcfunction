#> asset:artifact/0949.ft_139_rifle_reload/sneak_1s/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/949/sneak_1s/

# ここから先は神器側の効果の処理を書く
    playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.5
    playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.6

    data modify storage api: Argument.ID set value 948
    function api:artifact/give/from_id
