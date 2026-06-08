#> asset:mob/0204.infernal_watcher/tick/update_state/start_frenzy
# @within function asset:mob/0204.infernal_watcher/tick/update_state/

# tag付け
    tag @s add 5O.InFrenzy

# 速度・追尾力更新
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.Move.InFrenzy.Speed
    data modify storage asset:context this.Rotate set from storage asset:context this.Move.InFrenzy.Rotate
    
# 見た目更新
    item replace entity @s armor.head with minecraft:stick{CustomModelData:20208}

# 演出
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
    playsound ogg:mob.blaze.breathe4 hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
    particle lava ~ ~1.5 ~ 0 0 0 0.2 5
