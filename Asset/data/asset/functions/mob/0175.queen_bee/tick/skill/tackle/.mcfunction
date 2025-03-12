#> asset:mob/0175.queen_bee/tick/skill/tackle/
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# 突進前の挙動
# プレイヤーをみる
    execute if score @s General.Mob.Tick matches 10 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated
# 突進用モデルに変える
    execute if score @s General.Mob.Tick matches 10 run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20053}
# 一定時間後ずさり
    execute if score @s General.Mob.Tick matches 10..24 at @s rotated ~180 0 run function asset:mob/0175.queen_bee/tick/skill/tackle/tp_back

# 突進1回目
# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 25 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated
# 一定時間突進し続ける.
    execute if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage
    execute if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 25..35 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage
# 攻撃判定のタグを消す
    execute if score @s General.Mob.Tick matches 36 run tag @s remove 4V.SkillTackleDamageHit

# 突進2回目
# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 36 at @s facing entity @p[gamemode=!spectator] eyes rotated ~180 ~ run function asset:mob/0175.queen_bee/tick/rotated
    execute if score @s General.Mob.Tick matches 36..53 at @s rotated ~10 ~ run function asset:mob/0175.queen_bee/tick/rotated
    execute if score @s General.Mob.Tick matches 53 at @s facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated
# 突進
    execute if score @s General.Mob.Tick matches 36..68 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 36..68 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage
# 突進の加速
    execute if score @s General.Mob.Tick matches 36..68 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s General.Mob.Tick matches 36..68 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle/damage
# 攻撃判定のタグを消す
    execute if score @s General.Mob.Tick matches 68 run tag @s remove 4V.SkillTackleDamageHit

# 確率で突進二回目に戻す
    execute if score @s General.Mob.Tick matches 68 if predicate lib:random_pass_per/30 run scoreboard players set @s General.Mob.Tick 36

# 終了処理
# モデル戻す
    execute if score @s General.Mob.Tick matches 70.. run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20052}
# リセット処理
    execute if score @s General.Mob.Tick matches 70.. run tag @s remove 4V.SkillTackle
    execute if score @s General.Mob.Tick matches 70.. run scoreboard players set @s General.Mob.Tick -60
