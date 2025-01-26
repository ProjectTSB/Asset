#> asset:artifact/1065.magic_bullet/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1065/click/


# 何回目の弾丸かを計算する
# (7 - 使用回数)
    scoreboard players set $7 Temporary 7
    execute store result score $RemainCount Temporary run data get storage asset:context RemainingCount
    execute store result score $UseCount Temporary run scoreboard players operation $7 Temporary -= $RemainCount Temporary

# 7回目なら確率でプレイヤーを狙うTagを付与
    execute if score $UseCount Temporary matches 7 if predicate lib:random_pass_per/50 run tag @s add TL.AimToPlayer
    #execute if score $UseCount Temporary matches 7 run tag @s add TL.AimToPlayer

# 魔弾を召喚
    execute anchored eyes positioned ^-0.4 ^-0.1 ^0.6 summon marker run function asset:artifact/1065.magic_bullet/click/5.init_bullet

# プレイヤーのRotationをstorageに入れる
    data modify storage asset:temp TL.Rotation set from entity @s Rotation

# マクロを使って魔法陣を召喚
# 使用回数に応じて魔法陣の召喚数を増やす
# プレイヤーを狙う状態の際は魔方陣を1つ追加
    execute anchored eyes positioned ^-0.4 ^-0.1 ^0.9 run function asset:artifact/1065.magic_bullet/click/6.summon_square.m with storage asset:temp TL
    execute if score $UseCount Temporary matches 3.. anchored eyes positioned ^-0.4 ^-0.1 ^1.05 run function asset:artifact/1065.magic_bullet/click/6.summon_square.m with storage asset:temp TL
    execute if score $UseCount Temporary matches 7 anchored eyes positioned ^-0.4 ^-0.1 ^1.2 run function asset:artifact/1065.magic_bullet/click/6.summon_square.m with storage asset:temp TL
    execute if score $UseCount Temporary matches 7 if entity @s[tag=TL.AimToPlayer] anchored eyes positioned ^-0.4 ^-0.1 ^1.35 run function asset:artifact/1065.magic_bullet/click/6.summon_square.m with storage asset:temp TL

# プレイヤーを狙う状態の時に実行
    execute if entity @s[tag=TL.AimToPlayer] run function asset:artifact/1065.magic_bullet/click/4.aim_to_player

# スケジュールループ
    schedule function asset:artifact/1065.magic_bullet/click/loop/ 1t replace

# 使用回数が0になったら再度give
    execute if data storage asset:context {BrokeItem: true} run playsound block.iron_trapdoor.close player @a ~ ~ ~ 0.7 0.7
    execute if data storage asset:context {BrokeItem: true} run playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.7
    execute if data storage asset:context {BrokeItem: true} run data modify storage api: Argument.ID set value 1065
    execute if data storage asset:context {BrokeItem: true} run function api:artifact/give/from_id

# リセット
    tag @s[tag=TL.AimToPlayer] remove TL.AimToPlayer
    scoreboard players reset $7 Temporary
    scoreboard players reset $UseCount Temporary
    scoreboard players reset $RemainCount Temporary
    scoreboard players reset $SquareCount Temporary
    data remove storage asset:temp TL
