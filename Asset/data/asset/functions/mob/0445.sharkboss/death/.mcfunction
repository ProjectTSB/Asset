#> asset:mob/0445.sharkboss/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/445/death

# 継承元の処理実行
    function asset:mob/super.death

# アニメーション終了
    #function asset:mob/0445.sharkboss/tick/action/utility/end

# 死亡アニメーション制御用オブジェクト召還
    data modify storage api: Argument.ID set value 2287
    function api:object/summon

# スコアボード削除
    scoreboard objectives remove CD.Timer
    scoreboard objectives remove CD.AnimationTimer
    scoreboard objectives remove CD.ElectrifiedActionCounter
    scoreboard objectives remove CD.TransitionCounter
    scoreboard objectives remove CD.DpsCheckThreshold
    scoreboard objectives remove CD.Player.LaunchCounter
    scoreboard objectives remove CD.Player.DamageTimer

# プレイヤーのタグ削除
    tag @a remove CD.Player.TempDamageTarget
    tag @a remove CD.Player.Launch.First
    tag @a remove CD.Player.Launch.Second
    tag @a remove CD.Player.Launch.HorizontalLight
    tag @a remove CD.Player.Launch.HorizontalNormal
    tag @a remove CD.Player.Launch.HorizontalStrong
    tag @a remove CD.Player.Launch.VerticalLight
    tag @a remove CD.Player.Launch.VerticalNormal
    tag @a remove CD.Player.Launch.VerticalStrong
