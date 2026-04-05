#> asset:mob/0263.shulker_bullet/tick/target/
#
# プレイヤーをターゲットする処理
#
# @output
#   result isVisible : boolean
#   storage asset:context
#       this.Target.ID? : UserID
#       this.Target.Pos? : Pos
#       this.Target.Rotation? : Rotation
# @within function
#   asset:mob/0263.shulker_bullet/tick/turn/
#   asset:mob/0263.shulker_bullet/tick/target/

execute if entity @s[dx=0] summon marker run return run function asset:mob/0263.shulker_bullet/tick/target/fetch
execute positioned ^ ^ ^0.2 if block ^ ^ ^ #lib:no_collision/ run return run function asset:mob/0263.shulker_bullet/tick/target/
