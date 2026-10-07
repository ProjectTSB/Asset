#> asset:mob/0265.dark_familiar/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/265/tick

#> Private
# @private
    #declare score_holder $Interval

# パーティクル
    execute anchored eyes positioned ^ ^ ^-0.3 run particle dust 0.5 0 0.6 0.5 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute anchored eyes positioned ^ ^ ^-0.3 run particle dust 0.5 0.3 0.6 0.7 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 消える
    execute if entity @s[scores={General.Mob.Tick=200..}] run function asset:mob/0265.dark_familiar/tick/kill
    #tellraw @a {"storage":"asset:context","nbt":"this.Speed"}

# 一定間隔で攻撃 召喚してすぐは攻撃しないようにしている
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 anchored eyes positioned ^ ^ ^ summon marker run function asset:mob/0265.dark_familiar/tick/shoot
    scoreboard players reset $Interval Temporary
