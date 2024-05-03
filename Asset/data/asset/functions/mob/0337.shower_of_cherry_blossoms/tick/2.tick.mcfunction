#> asset:mob/0337.shower_of_cherry_blossoms/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0337.shower_of_cherry_blossoms/tick/1.trigger

#> Val
# @private
    #declare score_holder $9D.LifeTime

# スコアボード追加
    scoreboard players add @s 9D.LifeTime 1

# 回転
    tp @s ~ ~ ~ ~2 ~

# 追尾する
    execute facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^ ^0.05 rotated as @s run tp @s ^ ^ ^ ~ ~

# 4Tickに1回演出
    scoreboard players operation $9D.LifeTime Temporary = @s 9D.LifeTime
    scoreboard players operation $9D.LifeTime Temporary %= $4 Const
    execute if score $9D.LifeTime Temporary matches 0 run function asset:mob/0337.shower_of_cherry_blossoms/tick/3.vfx

# 4Tickに1回ダメージ判定
    execute if score $9D.LifeTime Temporary matches 0 as @a[tag=!PlayerShouldInvulnerable,distance=..1] run tag @s add 9D.Landing
    execute if score $9D.LifeTime Temporary matches 0 positioned ~ ~1.5 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 9D.Landing
    execute if score $9D.LifeTime Temporary matches 0 positioned ~ ~5 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..3] run tag @s add 9D.Landing
    tag @s add 9D.This
    execute as @a[tag=9D.Landing,distance=..16] run function asset:mob/0337.shower_of_cherry_blossoms/tick/4.attack
    tag @s remove 9D.This

# 100TickでKill
    kill @s[scores={9D.LifeTime=81..}]

# リセット
    scoreboard players reset $9D.LifeTime Temporary
