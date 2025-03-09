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

# 7回目なら確率でプレイヤーを狙うTagを付与
    execute if score $UseCount Temporary matches 7 if predicate lib:random_pass_per/50 run tag @s add TL.AimToPlayer
    #execute if score $UseCount Temporary matches 7 run tag @s add TL.AimToPlayer

# 魔法陣を召喚
# 使用回数に応じて魔法陣の召喚数を増やす
# プレイヤーを狙う状態の際は魔方陣を1つ追加
    execute anchored eyes positioned ^-0.4 ^-0.1 ^0.9 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[0.9d,0.9d,0.01d],Delay:2,Interpolation:2}
    execute if score $UseCount Temporary matches 3.. anchored eyes positioned ^-0.4 ^-0.1 ^1.05 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[1.8d,1.8d,0.01d],Delay:4,Interpolation:4}
    execute if score $UseCount Temporary matches 7 anchored eyes positioned ^-0.4 ^-0.1 ^1.2 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[1.2d,1.2d,1.2d],Delay:8,Interpolation:2}
    execute if score $UseCount Temporary matches 7 if entity @s[tag=TL.AimToPlayer] anchored eyes positioned ^-0.4 ^-0.1 ^1.35 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[0.7d,0.7d,0.7d],Delay:10,Interpolation:2}

# ダメージ

    # 非プレイヤー
    # Damage = 350 + 150 * N
    # 7発目なら強制的に2000
        scoreboard players set $Damage Temporary 150
        scoreboard players operation $Damage Temporary *= $UseCount Temporary
        scoreboard players add $Damage Temporary 350
    # storageへ
        execute store result storage api: Argument.FieldOverride.Damage.ToNonPlayer int 1 run scoreboard players get $Damage Temporary
        execute if score $UseCount Temporary matches 7 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 2000f

    # プレイヤー
    # Damage = 2.5(N + 9)
    # 7発目なら強制的に50
        scoreboard players operation $Damage Temporary = $UseCount Temporary
        scoreboard players add $Damage Temporary 9
    # storageへ
        execute store result storage api: Argument.FieldOverride.Damage.ToPlayer int 2.5 run scoreboard players get $Damage Temporary
        execute if score $UseCount Temporary matches 7 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 50f

    # 制御不能な7発目の際の自身へのダメージ
        execute if entity @s[tag=TL.AimToPlayer] run data modify storage api: Argument.FieldOverride.Damage.Self set value 70f

# 魔弾を召喚
    data modify storage api: Argument.ID set value 1046
    execute if entity @s[tag=TL.AimToPlayer] run data modify storage api: Argument.FieldOverride.AimToPlayer set value true
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^-0.4 ^-0.1 ^0.6 run function api:object/summon

# プレイヤーを狙う状態の時に実行
    execute if entity @s[tag=TL.AimToPlayer] run function asset:artifact/1065.magic_bullet/trigger/aim_to_player

# 使用回数が0になったら再度give
    execute unless data storage asset:context Items.mainhand.id run playsound block.iron_trapdoor.close player @a ~ ~ ~ 0.7 0.7
    execute unless data storage asset:context Items.mainhand.id run playsound entity.horse.armor player @a ~ ~ ~ 0.6 0.7
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 1065
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# リセット
    tag @s[tag=TL.AimToPlayer] remove TL.AimToPlayer
    scoreboard players reset $7 Temporary
    scoreboard players reset $UseCount Temporary
    scoreboard players reset $RemainCount Temporary
