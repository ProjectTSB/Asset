#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/make_weapon_candidates
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/weapons/select_weapon

#> prv
# @private
    #declare score_holder $health_per

# 判定用のHP割合取得
    function api:mob/get_health_percent
    execute store result score $health_per Temporary run data get storage api: Return.HealthPer 100

# 候補武器リストのデフォルトを作成
    data modify storage asset:temp action.Candidates set value [{Cand:"storm_shadow"},{Cand:"brimstone"},{Cand:"drone"},{Cand:"drone"},{Cand:"drone"}]

# HPが半分以下の場合無誘導爆弾追加
    execute if score $health_per Temporary matches ..49 run data modify storage asset:temp action.Candidates append value {Cand:"snake_eye"}

# HPが25%以下の場合ストームシャドウをクラスター版に置き換え
    execute if score $health_per Temporary matches ..25 run data modify storage asset:temp action.Candidates[{Cand:"storm_shadow"}] set value {Cand:"storm_shadow_cluster"}

# 対空砲が壊れていた場合機銃掃射を候補に追加し、爆弾とドローンは削除
    execute if entity @e[tag=PatriotLauncher.IsBroken,distance=..128] run data remove storage asset:temp action.Candidates[{Cand:"snake_eye"}]
    execute if entity @e[tag=PatriotLauncher.IsBroken,distance=..128] run data remove storage asset:temp action.Candidates[{Cand:"drone"}]
    execute if entity @e[tag=PatriotLauncher.IsBroken,distance=..128] run data modify storage asset:temp action.Candidates append value {Cand:"gatling"}

# ドローンを使用可能か判定
    execute if entity @e[type=phantom,scores={MobID=214},distance=..128] run tag @s add 5X.CannotUseDrone
    execute if entity @s[tag=5X.CannotUseDrone] run data remove storage asset:temp action.Candidates[{Cand:"drone"}]
    execute unless entity @e[type=phantom,scores={MobID=214},distance=..128] run tag @s remove 5X.CannotUseDrone

# 1回前に使用した武器を候補から削除
    execute if data storage asset:context Action{LastUse:"storm_shadow"} run data remove storage asset:temp action.Candidates[{Cand:"storm_shadow"}]
    execute if data storage asset:context Action{LastUse:"storm_shadow_cluster"} run data remove storage asset:temp action.Candidates[{Cand:"storm_shadow_cluster"}]
    execute if data storage asset:context Action{LastUse:"brimstone"} run data remove storage asset:temp action.Candidates[{Cand:"brimstone"}]
    execute if data storage asset:context Action{LastUse:"snake_eye"} run data remove storage asset:temp action.Candidates[{Cand:"snake_eye"}]
    execute if data storage asset:context Action{LastUse:"gatling"} run data remove storage asset:temp action.Candidates[{Cand:"gatling"}]


# 空中散布地雷の強制発動をするか確認
    execute if score $health_per Temporary matches ..75 unless entity @s[tag=5X.Mine75Per] run data modify storage asset:temp action.Candidates set value [{Cand:"landmine"}]
    execute if score $health_per Temporary matches ..75 unless entity @s[tag=5X.Mine75Per] run tag @s add 5X.Mine75Per

    execute if score $health_per Temporary matches ..50 unless entity @s[tag=5X.Mine50Per] run data modify storage asset:temp action.Candidates set value [{Cand:"landmine"}]
    execute if score $health_per Temporary matches ..50 unless entity @s[tag=5X.Mine50Per] run tag @s add 5X.Mine50Per

    execute if score $health_per Temporary matches ..25 unless entity @s[tag=5X.Mine25Per] run data modify storage asset:temp action.Candidates set value [{Cand:"landmine"}]
    execute if score $health_per Temporary matches ..25 unless entity @s[tag=5X.Mine25Per] run tag @s add 5X.Mine25Per

# reset
    scoreboard players reset $health_per Temporary
