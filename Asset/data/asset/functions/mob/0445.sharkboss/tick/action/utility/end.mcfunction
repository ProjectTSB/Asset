#> asset:mob/0445.sharkboss/tick/action/utility/end
#
# アクション終了処理
#
# @within function asset:mob/0445.sharkboss**

#人力で全部のタグを消す　なんか美しくない気もする...

  #空中のやつ
  execute if entity @s[tag=CD.Action.Bite] run tag @s remove CD.Action.Bite
  execute if entity @s[tag=CD.Action.Tail] run tag @s remove CD.Action.Tail
  execute if entity @s[tag=CD.Action.Spin] run tag @s remove CD.Action.Spin
  execute if entity @s[tag=CD.Action.BiteTail] run tag @s remove CD.Action.BiteTail
  #execute if entity @s[tag=CD.Action.Move_Bite] run tag @s remove CD.Action.Move_Bite
  execute if entity @s[tag=CD.Action.Move] run tag @s remove CD.Action.Move
  execute if entity @s[tag=CD.Action.EMP] run tag @s remove CD.Action.EMP

  #地中のやつ
  execute if entity @s[tag=CD.Action.WaterGun1] run tag @s remove CD.Action.WaterGun1
  execute if entity @s[tag=CD.Action.WaterGun2] run tag @s remove CD.Action.WaterGun2
  execute if entity @s[tag=CD.Action.Rush1] run tag @s remove CD.Action.Rush1
  execute if entity @s[tag=CD.Action.Rush2] run tag @s remove CD.Action.Rush2
  execute if entity @s[tag=CD.Action.Rush3] run tag @s remove CD.Action.Rush3

  execute if entity @s[tag=CD.Action.Sharknado1] run tag @s remove CD.Action.Sharknado1
  execute if entity @s[tag=CD.Action.Sharknado2] run tag @s remove CD.Action.Sharknado2
  execute if entity @s[tag=CD.Action.Sharknado3] run tag @s remove CD.Action.Sharknado3

  execute if entity @s[tag=CD.Action.Down1] run tag @s remove CD.Action.Down1
  execute if entity @s[tag=CD.Action.Down2] run tag @s remove CD.Action.Down2
  execute if entity @s[tag=CD.Action.Down3] run tag @s remove CD.Action.Down3

  execute if entity @s[tag=CD.Action.Puffer1] run tag @s remove CD.Action.Puffer1
  execute if entity @s[tag=CD.Action.Puffer2] run tag @s remove CD.Action.Puffer2


#次の行動いけますタグ
tag @s add CD.CanAction
# scoreboard players set @s CD.AnimationTimer 0
