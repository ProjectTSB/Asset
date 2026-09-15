# Object、API、生成と検証

Object／Effect の変更前に [型・インスタンス・継承モデル](object-model.md) を読む。Object は `Asset/data/asset/functions/object/<4桁ID>.<name>/` の型定義から生成され、summon／init／tick や任意メソッドを自前実装・継承・明示 super で組み合わせる。基底の abstract_projectile を使う例と、子の値を先に設定する初期化契約も同文書に示す。

ディレクトリはゼロ埋め4桁だが、`storage asset:object ID` と API へ渡す ID は整数である。生成時の FieldOverride はクラスの既定 Field に merge される。個体の Field は OhMyDat の `ObjectField` に保持され、処理中だけ `storage asset:context this.*` に展開される。実装から `this` を変えた結果は本体の呼び出し境界で書き戻される。Effect は別の保存形式・イベント呼び出し方式を持つため、Object の経路をそのまま適用しない。

`object/1051.time_laser/tick/damage.mcfunction` はcontextのDamage等を `api: Argument` に転送し、owner検索用のTemporaryを末尾でresetする実例である。`object/1069.icicle_manager/tick/summon_icicle/summon.m.mcfunction` はmacro引数 `OffsetX`, `OffsetZ` を `$execute` へ展開し、`FieldOverride.*` は `asset:context this` から直接設定する。storage macroの別例では `object/1086.lightning_exploit/hit/vfx/random.mcfunction` が `with storage asset:temp Args` で `.m` 関数を呼ぶ。呼出形式を混同しない。

処理後にローカル計算用Temporary scoreや一時tagを残すと別処理へ影響するため、同じ関数で確保した値の後始末を確認する。一方、`asset:context this`、イベント入力、APIのReturnは呼出元や後続処理が読む場合があるため、一律削除しない。範囲selectorは広域 `@e` ならdistance/dx等で探索を限定する。PR #2078はdimensionをまたぐ総当たりを避けるためdistance追加を求めた例で、全selectorへ同じ条件を強制する根拠ではない。

APIの呼び出し契約は本体リポジトリ側で最終確定する。このrepoでは `function api:global_vars/get_difficulty` の後に `api: Return.Difficulty` を読む例や、effect取得後に `api: Return.Effect` の有無を判定する例がある。一方、入力を書き換えるAPIやcommand resultを直接返す関数もあり、全APIがReturnを提供するとは限らない。呼出前にIMP Docと同系統の現行呼出例を読み、実行者、Argumentの型、成功・失敗時のcleanup、結果pathを確認する。

Wiki の API 一覧は探索用の索引として使えるが、例示された path・Return 名を契約として転記しない。例えば Absorption 取得の現行本体は UUID 必須で `Return.Absorption` を返し、Wiki の引数なし／`Return.Amount` という例とは異なる。Asset 単独で判断できない場合は [固定 commit の本体 `get`](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/api/functions/entity/player/absorption/get.mcfunction) と core を確認する。

生成・更新スクリプトは相対cwdへの依存が強い。作用先は次の通り。

|script|入力|書込先・注意|
|---|---|---|
|`extract.sh`|`scripts/in_source` のDB/CSVとtrader register|`scripts/input/*.csv`、中間DBを更新し、packing script経由で`output`を作って最後に`update_register.sh`を呼ぶ。入力CSVとDBも加工・削除する。|
|`update_register.sh`|`scripts/output/strpack-*.txt`|`Asset/data/asset/functions/nexus_loader/register.mcfunction` の固定行を `sed -i` で更新する。|
|`extract_trader.sh`|`Asset/.../trader/**/register.mcfunction`|`scripts/input/traders.csv`。|
|`update-artifact-register.scala.sc`|`scripts/input/artifact-colors.tsv` と各artifact registerのRarityRegistry行|該当registerへ色別registry行を追記する。既存行を除去しないので、無条件再実行は重複し得る。入力の`isSet`と事前差分を確認する。|
|`update-artifact-spreadsheet.scala.sc`|artifactの`give/2.give.mcfunction`|`scripts/output/artifact-spreadsheet.csv`を上書きする。|
|`mob_upgrade_v3.scala.sc`|repo rootから見た`Asset/data/.../mob`のv1/v2実装|mob本体のregister/init/triggerと`mob/alias/<ID>`を直接作成・更新する。既定は全mob対象なので、対象設定と差分を先に確認する。|

CI は `.github/workflows/datapack-linter.yml` の `ChenCMD/datapack-linter@v2`。push、pull_request、workflow_dispatch で走り、`animated_java:**` は lint 対象外。linter 成功は構文・参照の一部確認であり、実機の tick、damage、演出、説明文の正しさまでは保証しない。

スクリプト実行後は対象repoでdiffを確認し、意図しないmobやregisterが変わっていないか検索する。再生成が安全とスクリプトから確認できる場合だけ二度実行して差分安定性を見る。手動trigger、registerコメント、`# @within`、tag JSONを保持し、`mob_upgrade_v3.scala.sc` 後はv1/v2判定とalias参照を再検索する。
