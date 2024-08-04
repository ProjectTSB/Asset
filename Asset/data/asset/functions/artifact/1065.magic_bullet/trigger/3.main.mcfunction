#> asset:artifact/1065.magic_bullet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1065.magic_bullet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 何回目の弾丸かを計算する
# (7 - 使用回数)
    scoreboard players set $7 Temporary 7
    execute store result score $RemainCount Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute store result score $UseCount Temporary run scoreboard players operation $7 Temporary -= $RemainCount Temporary

# 魔弾を召喚
    execute anchored eyes positioned ^ ^-0.1 ^0.8 summon marker run function asset:artifact/1065.magic_bullet/trigger/4.init_bullet

# プレイヤーのRotationをstorageに入れる
    data modify storage asset:temp TL.Rotation set from entity @s Rotation

# マクロを使って魔法陣を召喚
# 使用回数に応じて魔法陣の召喚数を増やす
    execute anchored eyes positioned ^ ^-0.1 ^0.9 run function asset:artifact/1065.magic_bullet/trigger/5.summon_square.m with storage asset:temp TL
    execute if score $UseCount Temporary matches 3.. anchored eyes positioned ^ ^-0.1 ^1.05 run function asset:artifact/1065.magic_bullet/trigger/5.summon_square.m with storage asset:temp TL
    execute if score $UseCount Temporary matches 7 anchored eyes positioned ^ ^-0.1 ^1.2 run function asset:artifact/1065.magic_bullet/trigger/5.summon_square.m with storage asset:temp TL

# スケジュールループ
    schedule function asset:artifact/1065.magic_bullet/trigger/loop/ 1t replace




# 使用回数が0になったら再度give
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 1065
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id

# リセット
    scoreboard players reset $7 Temporary
    scoreboard players reset $UseCount Temporary
    scoreboard players reset $RemainCount Temporary
    scoreboard players reset $SquareCount Temporary
    data remove storage asset:temp TL
