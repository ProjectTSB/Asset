#> asset:mob/0445.sharkboss/tick/select_action/
#
# アクション選択
#
# @within asset:mob/0445.sharkboss/tick/

#行動可能タグを外す
    tag @s remove CD.CanAction

#プレイヤーが近距離かどうかをタグ付け、このdistanceで分岐が決まるので要調整
    execute if entity @s[tag=CD.CloseRangeAction] run tag @s remove CD.CloseRangeAction
    execute at @s if entity @a[tag=CD.Target,sort=nearest,limit=1,distance=..9] run tag @s add CD.CloseRangeAction


#遠近・飛行中かで分岐
    execute if entity @s[tag=!CD.Reserving,tag=CD.IsFlying,tag=CD.CloseRangeAction] run function asset:mob/0445.sharkboss/tick/select_action/sky_close
    execute if entity @s[tag=!CD.Reserving,tag=CD.IsFlying,tag=!CD.CloseRangeAction] run function asset:mob/0445.sharkboss/tick/select_action/sky_long
    execute if entity @s[tag=!CD.Reserving,tag=!CD.IsFlying,tag=CD.CloseRangeAction] run function asset:mob/0445.sharkboss/tick/select_action/ground_close
    execute if entity @s[tag=!CD.Reserving,tag=!CD.IsFlying,tag=!CD.CloseRangeAction] run function asset:mob/0445.sharkboss/tick/select_action/ground_long
    
#予約がある場合
    execute if entity @s[tag=CD.Reserving,tag=CD.Action.Reserve.Rush2] run tag @s add CD.Action.Rush2
    execute if entity @s[tag=CD.Reserving,tag=CD.Action.Reserve.Rush2] run tag @s remove CD.Action.Reserve.Rush2
    tag @s remove CD.Reserving

#行動スタート
  scoreboard players set @s CD.AnimationTimer 0
