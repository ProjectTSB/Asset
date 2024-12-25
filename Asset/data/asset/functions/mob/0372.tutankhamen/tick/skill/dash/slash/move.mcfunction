#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/dash_slashmove
#
# 移動処理
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# ホーミング
#    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^1 ~ ~

# 速さ
    data modify storage lib: Argument.VectorMagnitude set value 0.15

# 飛ぶのに使う
    execute if data entity @s {HurtTime:0s} at @s anchored eyes rotated as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] run function lib:motion/
    data remove storage lib: Argument

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.5
    scoreboard players reset $Interval Temporary
