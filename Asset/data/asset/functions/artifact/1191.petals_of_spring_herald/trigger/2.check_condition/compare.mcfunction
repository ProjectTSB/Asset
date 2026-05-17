#> asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition/compare
#
#
#
# @within function asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition/check_over_heal

# この神器によるバリア量 vs 回復量のN% で、回復量のほうが大きければ成功

# バリア量
    data modify storage api: Argument.UUID set value [I;1,3,344,0]
    execute store result score $UserID Temporary run data get storage asset:temp Heal.To[-1]
    execute as @a[tag=Receiver] if score @s UserID = $UserID Temporary run function api:entity/player/absorption/get
    execute store result score $CurrentBarrier Temporary run data get storage api: Return.Absorption.Amount 100

# 超過回復量のN%
    execute store result score $OverHeal Temporary run data get storage asset:temp Heal.Amounts[-1] 100

# 比較
    execute if score $OverHeal Temporary > $CurrentBarrier Temporary run data modify storage asset:temp Target.To append from storage asset:temp Heal.To[-1]
    execute if score $OverHeal Temporary > $CurrentBarrier Temporary run data modify storage asset:temp Target.Amounts append from storage asset:temp Heal.Amounts[-1]

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $OverHeal Temporary
    scoreboard players reset $CurrentBarrier Temporary
