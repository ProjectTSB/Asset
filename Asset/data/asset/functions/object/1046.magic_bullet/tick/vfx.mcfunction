#> asset:object/1046.magic_bullet/tick/vfx
#
#
#
# @within function
#   asset:object/1046.magic_bullet/tick/
#   asset:object/1046.magic_bullet/tick/teleport

#> Private
# @private
    #declare score_holder $BulletCount

# 何発目の弾かをスコアに入れる
    execute store result score $BulletCount Temporary run data get storage asset:context this.BulletCount

# 演出
    particle scrape ~ ~ ~ 0 0 0 15 100 normal @a
    execute if score $BulletCount Temporary matches 4.. run particle scrape ~ ~ ~ 0 0 0 30 100 normal @a
    execute if score $BulletCount Temporary matches 7 run particle scrape ~ ~ ~ 0 0 0 45 100 normal @a
    playsound tsb_sounds:rifle_shot neutral @a[distance=..16] ~ ~ ~ 2 0.8
    playsound block.fire.extinguish neutral @a[distance=..16] ~ ~ ~ 1 1.2
    playsound block.fire.extinguish neutral @a[distance=..16] ~ ~ ~ 1 1.3
    playsound minecraft:entity.warden.sonic_boom neutral @a[distance=..16] ~ ~ ~ 0.3 2
    playsound minecraft:entity.warden.sonic_boom neutral @a[distance=..16] ~ ~ ~ 0.15 1.9

# リセット
    scoreboard players reset $BulletCount Temporary
