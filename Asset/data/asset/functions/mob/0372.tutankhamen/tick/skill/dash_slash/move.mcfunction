#> asset:mob/0372.tutankhamen/tick/skill/dash_slash/move
#
# 移動処理
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash_slash/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# ホーミング
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ 0 run tp @s ^ ^ ^1 ~ 0

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.5
    scoreboard players reset $Interval Temporary
