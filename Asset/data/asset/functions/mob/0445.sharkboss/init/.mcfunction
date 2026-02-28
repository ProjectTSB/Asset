#> asset:mob/0445.sharkboss/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/445/init

# 継承元の処理実行
    function asset:mob/super.init

# summon
  function animated_java:sharkboss/summon {args:{}}
  summon marker ~ ~2.5 ~ {Tags:["CD.Marker.SpawnPoint"]}

# タイマー初期化
  scoreboard players set @s CD.AnimationTimer 0
  scoreboard players set @s CD.TransitionCounter 0
  scoreboard players set @s CD.ElectrifiedActionCounter 0
  scoreboard players set @s General.Mob.Tick 0

# 行動開始タグ
  tag @s add CD.IsFlying
  tag @s add CD.CanAction
