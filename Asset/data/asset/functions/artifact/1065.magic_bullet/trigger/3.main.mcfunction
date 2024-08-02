#> asset:artifact/1065.magic_bullet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1065.magic_bullet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 魔弾を召喚
    execute anchored eyes positioned ^ ^-0.35 ^-0.15 summon marker run function asset:artifact/1065.magic_bullet/trigger/4.init_bullet

# スケジュールループ
    function asset:artifact/1065.magic_bullet/trigger/bullet/loop

# 魔法陣を召喚
    execute anchored eyes positioned ^ ^-0.35 ^1 summon item_display run function asset:artifact/1065.magic_bullet/trigger/5.init_square















# 使用回数が0になったら再度give
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 1065
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id
