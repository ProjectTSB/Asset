#> asset:object/2081.shower_of_cherry_blossoms/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2081/tick

#> Val
# @private
    #declare score_holder $Interval
    
# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転
    tp @s ~ ~ ~ ~2 ~

# 近くのプレイヤーの方を向く
    execute at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^ ^0.05 rotated as @s run tp @s ^ ^ ^ ~ ~

# 4Tickに1回演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 at @s run function asset:object/2081.shower_of_cherry_blossoms/tick/vfx

# 4Tickに1回ヒット判定
    execute if score $Interval Temporary matches 0 run tag @s add 2081.HitCheck

# スーパーメソッド呼び出し
    execute at @s run function asset:object/super.tick

# リセット
    scoreboard players reset $Interval Temporary
    tag @s[tag=2081.HitCheck] remove 2081.HitCheck

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
