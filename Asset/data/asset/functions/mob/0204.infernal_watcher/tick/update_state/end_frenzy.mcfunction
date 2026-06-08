#> asset:mob/0204.infernal_watcher/tick/update_state/end_frenzy
# @within function asset:mob/0204.infernal_watcher/tick/update_state/

# タグ削除
    tag @s remove 5O.InFrenzy

# 速度・追尾力更新
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.Move._.Speed
    data modify storage asset:context this.Rotate set from storage asset:context this.Move._.Rotate

# 見た目更新
    item replace entity @s armor.head with minecraft:stick{CustomModelData:20207}

# 演出
    playsound minecraft:block.soul_sand.break hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
    playsound minecraft:entity.phantom.flap hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
    particle large_smoke ~ ~1.5 ~ 0 0 0 0.05 5
