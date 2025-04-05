#> asset:mob/0175.queen_bee/init/
# @within asset:mob/alias/175/init

# スコア初期化
    scoreboard players set @s General.Mob.Tick -15

# SpawnMarkerを設置
    summon marker ~ ~ ~ {Tags:["4V.SpawnMarker"]}

# スーパーメソッド呼び出し
    function asset:mob/super.init
