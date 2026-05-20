#> asset:mob/0027.skull_sniper/tick/target/
#
# プレイヤーをターゲットする処理
#
# @output
#   result isVisible : boolean
#   storage asset:context this.Target.ID? : UserID
# @within function
#   asset:mob/0027.skull_sniper/tick/attack/warn
#   asset:mob/0027.skull_sniper/tick/select/foreach
#   asset:mob/0027.skull_sniper/tick/target/

execute if data storage asset:context this.Target run particle minecraft:dust 0.58 0 0 0.75 ~ ~ ~ 0 0 0 0 1
execute if entity @s[dx=0] run return run function asset:mob/0027.skull_sniper/tick/target/fetch
execute positioned ^ ^ ^0.5 if block ^ ^ ^ #lib:no_collision/ run return run function asset:mob/0027.skull_sniper/tick/target/
