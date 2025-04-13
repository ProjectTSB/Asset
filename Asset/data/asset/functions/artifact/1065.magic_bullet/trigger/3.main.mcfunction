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

# debug
    # tag @s add TL.AimToPlayer
    # scoreboard players set $UseCount Temporary 7

# プレイヤーを狙う状態なら、ランダムなIDを用意する
    execute if entity @s[tag=TL.AimToPlayer] store result score $Random Temporary run random value 0..65535

# 魔法陣を召喚
# 使用回数に応じて魔法陣の召喚数を増やす
# プレイヤーを狙う状態の際は魔法陣を1つ追加
    execute anchored eyes positioned ^-0.4 ^-0.1 ^0.9 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[0.9d,0.9d,0.01d],Delay:2,Interpolation:2,LeftRotate:false}
    execute if score $UseCount Temporary matches 3.. anchored eyes positioned ^-0.4 ^-0.1 ^1.05 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[1.8d,1.8d,0.01d],Delay:4,Interpolation:4,LeftRotate:true}
    execute if score $UseCount Temporary matches 7 anchored eyes positioned ^-0.4 ^-0.1 ^1.2 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[1.2d,1.2d,0.01d],Delay:8,Interpolation:2,LeftRotate:false}
    execute if score $UseCount Temporary matches 7 if entity @s[tag=TL.AimToPlayer] anchored eyes positioned ^-0.4 ^-0.1 ^1.35 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[0.7d,0.7d,0.01d],Delay:10,Interpolation:2,LeftRotate:true}

# 魔弾を召喚する

    # ダメージ定義
        # 非プレイヤー
        # 7発目なら強制的に2000
            execute if score $UseCount Temporary matches 1 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 500f
            execute if score $UseCount Temporary matches 2 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 650f
            execute if score $UseCount Temporary matches 3 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 800f
            execute if score $UseCount Temporary matches 4 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 950f
            execute if score $UseCount Temporary matches 5 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 1050f
            execute if score $UseCount Temporary matches 6 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 1350f
            execute if score $UseCount Temporary matches 7 run data modify storage api: Argument.FieldOverride.Damage.ToNonPlayer set value 2000f

        # プレイヤー
        # 7発目なら強制的に50
            execute if score $UseCount Temporary matches 1 run data modify storage api: Argument.FieldOverride.Damage.ToPlayer set value 25.0f
            execute if score $UseCount Temporary matches 2 run data modify storage api: Argument.FieldOverride.Damage.ToPlayer set value 27.5f
            execute if score $UseCount Temporary matches 3 run data modify storage api: Argument.FieldOverride.Damage.ToPlayer set value 30.0f
            execute if score $UseCount Temporary matches 4 run data modify storage api: Argument.FieldOverride.Damage.ToPlayer set value 32.5f
            execute if score $UseCount Temporary matches 5 run data modify storage api: Argument.FieldOverride.Damage.ToPlayer set value 35.0f
            execute if score $UseCount Temporary matches 6 run data modify storage api: Argument.FieldOverride.Damage.ToPlayer set value 37.5f
            execute if score $UseCount Temporary matches 7 run data modify storage api: Argument.FieldOverride.Damage.ToPlayer set value 50.0f

    # プレイヤーを狙う状態に弾に渡すデータ
    # 自分を貫いた際のダメージと、$RandomをIDとして渡す
        execute if entity @s[tag=TL.AimToPlayer] store result storage api: Argument.FieldOverride.ID int 1 run scoreboard players get $Random Temporary
        execute if entity @s[tag=TL.AimToPlayer] run data modify storage api: Argument.FieldOverride.AimToPlayer set value true
        execute if entity @s[tag=TL.AimToPlayer] run data modify storage api: Argument.FieldOverride.Damage.Self set value 70

    # 魔弾を召喚
        data modify storage api: Argument.ID set value 1046
        execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
        execute anchored eyes positioned ^-0.4 ^-0.1 ^0.6 run function api:object/summon

# プレイヤーを狙う状態の時に実行
    execute if entity @s[tag=TL.AimToPlayer] run function asset:artifact/1065.magic_bullet/trigger/summon_square/aim_to_player

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
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Random Temporary
