#> asset:object/1208.osmanthus_scent/kill/select_extended_collision
#
# 同じ本体の当たり判定がまだ候補になっていなければ、この追加当たり判定を候補にする
#
# @within function asset:object/1208.osmanthus_scent/kill/attack.m

# 近い判定で同じ本体を処理済みならスキップ
    execute if entity @s[tag=1208.Grouped] run return fail

# 同じ本体に属する敵(本体と追加当たり判定)に一時タグを付ける
    scoreboard players operation $BodyID Temporary = @s ForwardTargetMobUUID
    execute as @e[type=#lib:living_without_player,tag=!ExtendedCollision,distance=..3] if score @s MobUUID = $BodyID Temporary run tag @s add 1208.SameBody
    execute as @e[type=#lib:living_without_player,tag=ExtendedCollision,distance=..3] if score @s ForwardTargetMobUUID = $BodyID Temporary run tag @s add 1208.SameBody

# 本体がまだ候補になっていなければ、この判定を候補にする
    execute unless entity @e[type=#lib:living_without_player,tag=1208.DebuffTarget,tag=1208.SameBody,distance=..3] run tag @s add 1208.DebuffTarget

# 同じ本体の追加当たり判定を処理済みにする
    tag @e[type=#lib:living_without_player,tag=1208.SameBody,tag=ExtendedCollision,distance=..3] add 1208.Grouped

# リセット
    tag @e[type=#lib:living_without_player,tag=1208.SameBody,distance=..3] remove 1208.SameBody
    scoreboard players reset $BodyID Temporary
