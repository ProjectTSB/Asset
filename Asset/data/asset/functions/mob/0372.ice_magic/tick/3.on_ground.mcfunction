#> asset:mob/0372.ice_magic/tick/3.on_ground
#
# 地面にいるときの処理
#
# @within function asset:mob/0372.ice_magic/tick/1

#> Private
# @private
    #declare score_holder $Interval

    scoreboard players operation $Interval Temporary = @s AC.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 at @s rotated ~ 0 run function asset:mob/0372.ice_magic/tick/4.attack
    scoreboard players reset $Interval Temporary

# 直進
    tp @s ^ ^ ^0.5

# 段差下に落ちる
    execute at @s if block ^ ^ ^ #lib:no_collision if block ^ ^-1 ^ #lib:no_collision run say 段差下
    execute at @s if block ^ ^ ^ #lib:no_collision if block ^ ^-1 ^ #lib:no_collision run tp @s ^ ^-1 ^
# 段差上に上る
    execute at @s unless block ^ ^ ^ #lib:no_collision if block ^ ^1 ^ #lib:no_collision run say 段差上
    execute at @s unless block ^ ^ ^ #lib:no_collision if block ^ ^1 ^ #lib:no_collision run tp @s ^ ^1 ^

# 完全に阻まれたら消滅
    execute at @s unless block ^ ^ ^ #lib:no_collision unless block ^ ^1 ^ #lib:no_collision unless block ^ ^-1 ^ #lib:no_collision run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision unless block ^ ^1 ^ #lib:no_collision unless block ^ ^-1 ^ #lib:no_collision run say 段差なし
