#> asset:mob/0445.sharkboss/tick/select_action/
#
# アクション選択
#
# @within asset:mob/0445.sharkboss/tick/

#行動開始可能タグを外す
    tag @s remove CD.CanAction

# HP%取得
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

#帯電状態での予約なし攻撃回数が10回以上でシャークネード（DPSチェック）に移行
    execute if entity @s[tag=CD.Electrified,tag=!CD.Reserving,tag=!CD.Charging] run scoreboard players add @s CD.ElectrifiedActionCounter 1
    execute if entity @s[tag=CD.Electrified,tag=!CD.Reserving,tag=!CD.Charging] if score @s CD.ElectrifiedActionCounter matches 10.. run function asset:mob/0445.sharkboss/tick/select_action/sharknado

#DPSチェック失敗
    execute if entity @s[tag=CD.Charging] if score @s CD.Timer matches 200.. run tag @s add CD.Reserving
    execute if entity @s[tag=CD.Charging] if score @s CD.Timer matches 200.. run tag @s add CD.Action.Sharknado3


#プレイヤーが近距離かどうかをタグ付け、このdistanceで分岐が決まるので要調整
    execute if entity @s[tag=CD.CloseRangeAction] run tag @s remove CD.CloseRangeAction
    execute at @s if entity @a[tag=CD.Target,distance=..9,sort=nearest,limit=1] run tag @s add CD.CloseRangeAction

# 予約なし、非帯電、体力が25,50,75％以下になったとき、帯電モードへ移行
    # 25,50,75％以下で実行
    execute if entity @s[tag=!CD.Electrified,tag=!CD.Reserving] if score @s CD.TransitionCounter matches 0 if score $HealthPer Temporary matches ..75 run function asset:mob/0445.sharkboss/tick/select_action/state_transition
    execute if entity @s[tag=!CD.Electrified,tag=!CD.Reserving] if score @s CD.TransitionCounter matches 1 if score $HealthPer Temporary matches ..50 run function asset:mob/0445.sharkboss/tick/select_action/state_transition
    execute if entity @s[tag=!CD.Electrified,tag=!CD.Reserving] if score @s CD.TransitionCounter matches 2 if score $HealthPer Temporary matches ..25 run function asset:mob/0445.sharkboss/tick/select_action/state_transition

#遠近・帯電中かで分岐　予約があればスキップ
    execute if entity @s[tag=CD.CloseRangeAction,tag=!CD.Charging,tag=!CD.Electrified,tag=!CD.Reserving] run function asset:mob/0445.sharkboss/tick/select_action/normal_close
    execute if entity @s[tag=!CD.Charging,tag=!CD.Electrified,tag=!CD.CloseRangeAction,tag=!CD.Reserving] run function asset:mob/0445.sharkboss/tick/select_action/normal_long
    execute if entity @s[tag=CD.Electrified,tag=CD.CloseRangeAction,tag=!CD.Charging,tag=!CD.Reserving] run function asset:mob/0445.sharkboss/tick/select_action/elec_close
    execute if entity @s[tag=CD.Electrified,tag=!CD.Charging,tag=!CD.CloseRangeAction,tag=!CD.Reserving] run function asset:mob/0445.sharkboss/tick/select_action/elec_long
    execute if entity @s[tag=CD.Charging] run function asset:mob/0445.sharkboss/tick/select_action/charging

# 予約タグを外す
    execute if entity @s[tag=CD.Reserving] run tag @s remove CD.Reserving

#行動スタート
    scoreboard players set @s CD.AnimationTimer 0
