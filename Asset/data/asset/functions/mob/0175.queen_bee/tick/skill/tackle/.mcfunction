#> asset:mob/0175.queen_bee/tick/skill/tackle/
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_active

# 中心マーカーから遠い場合はテレポートする
    execute if score @s General.Mob.Tick matches 0 unless entity @e[type=marker,tag=4V.SpawnMarker,distance=..14] at @e[type=marker,tag=4V.SpawnMarker,distance=..100,sort=nearest,limit=1] run function asset:mob/0175.queen_bee/tick/common/tp/

# 突進前の挙動
# プレイヤーをみる
    execute if score @s General.Mob.Tick matches 10 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/common/tp/
# 突進用モデルに変える
    execute if score @s General.Mob.Tick matches 10 on passengers run data modify entity @s item.tag.CustomModelData set value 20053
# 一定時間後ずさり
    execute if score @s General.Mob.Tick matches 10..24 at @s rotated ~180 0 run function asset:mob/0175.queen_bee/tick/skill/tackle/tp_back

# 突進1回目
# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 25 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/common/tp/
# 一定時間突進し続ける.
    execute if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage
    execute if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage

# 中央のスポーンマーカーから離れたら、終わる
    execute at @s unless entity @e[type=marker,tag=4V.SpawnMarker,distance=..9] if score @s General.Mob.Tick matches 30..35 run scoreboard players set @s General.Mob.Tick 36


# 攻撃判定のタグを消す
    execute if score @s General.Mob.Tick matches 36 run tag @s remove 4V.SkillTackleDamageHit

# 突進2回目
# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 36 at @s rotated ~90 0 run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 36..53 at @s rotated ~10 ~ run function asset:mob/0175.queen_bee/tick/common/tp/
    execute if score @s General.Mob.Tick matches 53 at @s facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/common/tp/

# 周囲を回る時間をランダムにする
    execute if score @s General.Mob.Tick matches 52 if predicate lib:random_pass_per/40 run scoreboard players set @s General.Mob.Tick 37

# 突進
    execute if score @s General.Mob.Tick matches 36..65 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 36..65 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage

# 突進の加速
    execute if score @s General.Mob.Tick matches 36..65 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 36..65 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage
# 攻撃判定のタグを消す
    execute if score @s General.Mob.Tick matches 65 run tag @s remove 4V.SkillTackleDamageHit

# 終了処理
# モデル戻す
    execute if score @s General.Mob.Tick matches 68.. on passengers run data modify entity @s item.tag.CustomModelData set value 20052
# リセット処理
    execute if score @s General.Mob.Tick matches 68.. run function asset:mob/0175.queen_bee/tick/skill/reset
