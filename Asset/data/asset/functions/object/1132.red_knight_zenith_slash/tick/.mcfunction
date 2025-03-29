#> asset:object/1132.red_knight_zenith_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1132/tick

#> private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 一定のTickになるまでは、付近の敵のほうをゆっくりと見る
    execute unless score @s General.Object.Tick matches 20.. facing entity @e[type=#lib:living,tag=Enemy,distance=..32,sort=nearest,limit=1] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 一定のTickになったら飛んでいってほしいので、一定のTick以降で飛ばす
    execute if score @s General.Object.Tick matches 20.. run function asset:object/super.tick

# 飛翔開始のちょっと前に見た目レーザーを召喚
    execute if score @s General.Object.Tick matches 20 run function asset:object/1132.red_knight_zenith_slash/tick/visual_laser

# 数Tickおきにワープ攻撃
#    scoreboard players operation $Interval Temporary = @s General.Object.Tick
#    scoreboard players operation $Interval Temporary %= $10 Const
#    execute if score $Interval Temporary matches 0 run function asset:object/1132.red_knight_zenith_slash/tick/teleport
#    scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
