#> asset:mob/0106.mini_shulker/tick/target/
#
# プレイヤーをターゲットする処理
#
# @output storage asset:context
#   this.Target.ID? : UserID
#   this.Target.Pos? : Pos
#   this.Target.Rotation? : Rotation
# @within function
#   asset:mob/0106.mini_shulker/tick/select/foreach
#   asset:mob/0106.mini_shulker/tick/attack/shoot
#   asset:mob/0106.mini_shulker/tick/target/

execute if entity @s[dx=0] summon marker run return run function asset:mob/0106.mini_shulker/tick/target/fetch
execute positioned ^ ^ ^0.2 if block ^ ^ ^ #lib:no_collision/ run function asset:mob/0106.mini_shulker/tick/target/
