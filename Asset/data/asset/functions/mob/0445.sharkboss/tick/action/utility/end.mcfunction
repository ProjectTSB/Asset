#> asset:mob/0445.sharkboss/tick/action/utility/end
#
# アクション終了処理
#
# @within function asset:mob/0445.sharkboss/tick/action**

#人力で全部のタグを消す　なんか美しくない気もする...

  #空中のやつ
  execute if entity @s[tag=CD.Action.Bite] run tag @s remove CD.Action.Bite
  execute if entity @s[tag=CD.Action.Tail] run tag @s remove CD.Action.Tail
  execute if entity @s[tag=CD.Action.Spin] run tag @s remove CD.Action.Spin
  execute if entity @s[tag=CD.Action.BiteTail] run tag @s remove CD.Action.BiteTail
  execute if entity @s[tag=CD.Action.SkyToGround] run tag @s remove CD.Action.SkyToGround
  #execute if entity @s[tag=CD.Action.Move_Bite] run tag @s remove CD.Action.Move_Bite
  execute if entity @s[tag=CD.Action.Move] run tag @s remove CD.Action.Move

  #地中のやつ
  execute if entity @s[tag=CD.Action.WaterGun1] run tag @s remove CD.Action.WaterGun1
  execute if entity @s[tag=CD.Action.WaterGun2] run tag @s remove CD.Action.WaterGun2
  execute if entity @s[tag=CD.Action.Rush] run tag @s remove CD.Action.Rush
  execute if entity @s[tag=CD.Action.Rush2] run tag @s remove CD.Action.Rush2

#次の行動いけますタグ
tag @s add CD.CanAction
scoreboard players set @s CD.AnimationTimer 0
