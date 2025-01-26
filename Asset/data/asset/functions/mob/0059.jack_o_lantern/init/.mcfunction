#> asset:mob/0059.jack_o_lantern/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/59/init

# スーパーメソッド呼び出し
    function asset:mob/super.init

# スポーン位置を保存するマーカーを召喚
    summon marker ~ ~ ~ {Tags:["Object","1N.SpawnMarker"]}

# 演出
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1.5 1.5
    particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0 50

# 上に持ってくる
    tp @s ~ ~ ~

# プレイヤーをみる
    tp @s ~ ~ ~ facing entity @p

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -30
