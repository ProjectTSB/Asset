#> asset:object/2265.field_modify_manager/tick/set_bossbar_name
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/

# ピリオド
    scoreboard players add @s 2265.Period 1
    execute if score @s 2265.Period matches 30.. run scoreboard players set @s 2265.Period 0
    execute if score @s 2265.Period matches ..9 run data modify storage asset:context this.BossBar.Period set value ['{"text":"ac","font":"mob/456/modify","bold":false}']
    execute if score @s 2265.Period matches 10..19 run data modify storage asset:context this.BossBar.Period set value ['{"text":"bc","font":"mob/456/modify","bold":false}']
    execute if score @s 2265.Period matches 20.. run data modify storage asset:context this.BossBar.Period set value ['{"text":"ba","font":"mob/456/modify","bold":false}']
    
# ボスバー表示
    bossbar set asset:co_field_modify name [{"text":"> FIELD MODIFY PROCEEDING","color": "white","bold": true},{"storage":"asset:context","nbt":"this.BossBar.Period[]","interpret":true,"separator":""},{"text":" ","color": "white","bold": true},{"storage":"asset:context","nbt":"this.BossBar.Color[]","interpret":true,"separator":" "}]
