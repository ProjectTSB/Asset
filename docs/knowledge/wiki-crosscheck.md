# ProjectTSB Wiki と Asset 現行実装の照合

確認日: 2026-09-15。Wiki snapshot `3a5ede8625a713382dca0e96f46b2a8ed75218c5` の公開16ページと `_Sidebar.md` を全文確認し、Asset HEAD `8f661ea1003a0e519d9825c55e1dde0ce6edaf80`、本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` と照合した。Wiki は作成規約・設計意図、両 repo のコードは現行の実行事実として扱う。本体リンクは Asset 単独 clone でも読める固定 commit URL にする。

## 作成時に採用する規約

- artifact / mob / effect / object は4桁ゼロ埋め ID と snake_case の名前を使い、ID・名前・alias・tag 登録を揃える。テンプレート生成方法そのものは現行環境を確認する。
- IMP Doc、最小の `@within`、declare、score の最初の上書きと必要な寿命後の reset を守る。ただし個体 Field、event 入力、API Return まで「一時値」として消さない。
- Artifact の `Trigger` と `ConsumeItem` は表示情報で、実際の発火と消費を代替しない。function tag → ID check → common check →固有条件→ common use／効果、という境界を保つ。
- Wiki の Object 作成方針では、継承用の親を `IsAbstract:true` と `ExtendsSafe:true` にする。現行 Mob/Object の診断は全親の `ExtendsSafe` と二番目以降の親の `IsAbstract` を検査し、最初の親の `IsAbstract` は検査しない。作成方針と診断範囲の違いを区別する。
- Effect の given/re-given/tick/end/remove を分ける。永続 modifier を追加する型は、実際に到達し得る re-given/end/remove で必要な解除を対にする。0233 のセット Effect は re-given/remove の具体例であり、全 Effect の終了経路を保証する例ではない。Artifact の Equipment Effect と直接 Modifier は異なる副作用を持つ。

## Wiki の知見・現行との差・実装からの補足

Wiki に明記された知見、旧記述の訂正、コードから追加した補足を区別する。補足を Wiki の誤りとして扱わない。

| 論点 | 現行判断と根拠 |
| --- | --- |
| Mob の `summon/2.summon` 中心の手順 | 旧形式。現行型は [Lunatic Mage register](../../Asset/data/asset/functions/mob/0237.lunatic_mage/register.mcfunction) のような register と `mob/alias/<ID>`、本体 dispatch を追う。pool参加は enroll と別契約。 |
| Object register は load 時に1回 | 誤り。本体は summon ごとに [alias register](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/object/summon/register.m.mcfunction) を評価する。register は型定義を scratch storage に構築する実行コードである。 |
| abstract は直接召喚不可、継承違反は拒否 | 新規設計上は禁止として採用するが、本体は [abstract 診断](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/object/summon/.mcfunction) 後も処理を止めない。`ExtendsSafe` と複数親の検査も tellraw 診断である。 |
| 補足: 複数親の合成・探索順 | Wiki も Object の `Extends` を `int[]` と説明する。現行実装の追加詳細として、定義は後の親が前を上書きし最後に子が上書きする。method は各親枝を探索し複数実装が呼ばれ得る。Object 任意 method は末尾側からなので lifecycle と同一順序ではない。 |
| 補足: method の成否と override fallback | Wiki は成否による fallback を説明していない。現行実装では子に resource が存在すれば、実行の成否にかかわらず暗黙の親 fallback を止める。`Implement` は [function存在 probe](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/object/call_method/run_method.m.mcfunction) であり返り値ではない。 |
| `asset:context this` は一時 storage | storage 上は作業窓だが、内容は個体ごとの OhMyDat Field へ保存される永続状態。破棄時は保存されない。nested summon/call の stash も失敗時まで全面保証しない。 |
| 補足: Effect と Mob/Object の実行系の違い | Wiki も Effect 固有の wrapper と固定イベントを説明する。現行 Effect は ID wrapper の function tag、単一親 chain、`Effects[]` 各要素の固定 event。Mob/Object の numeric alias・複数親・任意 method を流用しない。 |
| Effect Lv4 は運用上未使用 | 現行 [0244.aurora_armor](../../Asset/data/asset/functions/effect/0244.aurora_armor/register.mcfunction) と [0246.flame_devil_armor](../../Asset/data/asset/functions/effect/0246.flame_devil_armor/register.mcfunction) が `RequireClearLv 4` を使うため不採用。 |
| 訂正: Effect 後段の `PreviousField{Stack:3}` という例 | Wiki の前段は `this.PrevStack` の保存を正しく説明するが、後段のこの例は一致しない。`PreviousField` は前回 Field snapshot。現行 [0233 given](../../Asset/data/asset/functions/effect/0233.flame_armor/given/.mcfunction) と [re-given](../../Asset/data/asset/functions/effect/0233.flame_armor/re-given/.mcfunction) は現在 stack を `this.PrevStack` に保存して次回比較する。 |
| Artifact の `Trigger` / `ConsumeItem` | ともに表示定義。実 trigger は tag 登録、実消費は個別 API 処理。[本体 common use](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/artifact/use/.mcfunction) は MP、cooldown、使用回数、LatestUseTick、item 更新に加え `PersistentArgument.AdditionalMPHeal` の設定を伴う。 |
| Equipment Effect と Modifier | 同じ Effect ID の装備は Effect stack へ接続する。[0624 flame helm](../../Asset/data/asset/functions/artifact/0624.flame_helm/give/2.give.mcfunction) の Modifier は部位ごとに直接集計されるため、4部位に書けば4回分になる。 |
| Absorption API の Wiki 例 | 現行本体 [get wrapper](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/api/functions/entity/player/absorption/get.mcfunction) は UUID 必須で `Return.Absorption`。個別 API は本体 IMP Doc と呼出例を優先する。 |
| AJ の配置と `required:false` JSON | 現行でも optional function-tag entry を使用する。Asset-AnimatedJava の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) と [global/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/on_load.json) は各モデル関数を `required:false` で列挙する。Wiki の `mob/model/...json` とは現在の配置が異なるが、参照を optional にする仕組みは現行コードで確認できる。Asset 側の直接関数呼出しとも併存する。 |

## 全ページの調査範囲と採否

| ページ | 読んだ範囲 | Asset への採否 |
| --- | --- | --- |
| [Home](https://github.com/ProjectTSB/TheSkyBlessing/wiki/Home) | 全文（1文） | 目次説明のみ。 |
| [_Sidebar](https://github.com/ProjectTSB/TheSkyBlessing/wiki/_Sidebar) | 全21行 | 公開ページ集合の照合に採用。 |
| [How-to-use-Git](https://github.com/ProjectTSB/TheSkyBlessing/wiki/How-to-use-Git) | 全156行 | Git一般・旧repo/task手順のため不採用。 |
| [TSB-GitHub-TIPS](https://github.com/ProjectTSB/TheSkyBlessing/wiki/TSB-GitHub-TIPS) | 全7行 | label案内のみ。不採用。 |
| [resolve-conflict](https://github.com/ProjectTSB/TheSkyBlessing/wiki/resolve-conflict) | 全26行 | 共通 tag JSON で両方の登録と重複を確認する意図のみ採用。 |
| [convetion](https://github.com/ProjectTSB/TheSkyBlessing/wiki/convetion) | 全150行 | IMP Doc・declare・命名・寿命を採用。全値の一律 reset には一般化しない。 |
| [create-artifact](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-artifact) | 全1178行（区間分割） | 表示／実処理、common check/use、Equipment、event context を採用。debug手順は不採用。 |
| [create-mob](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-mob) | 全226行 | 命名・共通能力と現行にも残る Victim/Attacker tag を採用。旧テンプレートの手順と個別 test path は現行対象に合わせる。 |
| [create-effect](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-effect) | 全446行 | event分離、Field、modifier cleanup を採用。Lv4未使用と一部の再付与例は訂正し、継承の実装詳細は補足。 |
| [create-object](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-object) | 全334行 | Field/alias/super/軽量化の意図を採用。load登録・強制拒否を訂正。 |
| [ItemMetaData](https://github.com/ProjectTSB/TheSkyBlessing/wiki/ItemMetaData) | 全43行 | item定義時の用途を参照。今回の主要文書には一覧を複製せず。 |
| [tags](https://github.com/ProjectTSB/TheSkyBlessing/wiki/tags) | 全112行 | 分類／event tag の意図を採用。対象・距離・cleanup は本体 handler を優先。 |
| [api](https://github.com/ProjectTSB/TheSkyBlessing/wiki/api) | 全638行 | reset と副作用の意図を採用。schema/Return/path は固定 HEAD 本体で確認。 |
| [libraries](https://github.com/ProjectTSB/TheSkyBlessing/wiki/libraries) | 全427行 | 機能探索の索引として採用。個別契約は本体 IMP Doc を優先。 |
| [StorageStructure](https://github.com/ProjectTSB/TheSkyBlessing/wiki/StorageStructure) | 全394行 | context/OhMyDat の概念を採用。WIP節と一律 reset は不採用。 |
| [RejoinRule](https://github.com/ProjectTSB/TheSkyBlessing/wiki/RejoinRule) | 全10行 | 復旧用途、player を as/at とする実行 context、入口を軽く保つ方針を採用。現行でも Mob の直下配置と Artifact の trigger/rejoin_process があり、配置は対象カテゴリの実例で確認する。旧パスとして一括棄却しない。 |
| [Animated-Javaを使う歳の注意](https://github.com/ProjectTSB/TheSkyBlessing/wiki/Animated-Javaを使う歳の注意) | 全6行 | Mob外利用は要調整という意図を採用。`required:false` は現行でも使用中。現在の配置は Asset-AnimatedJava の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) 等の集約 tag JSON である。 |

外部リンク先の一般 Git/DHP/Gamepedia 文書と添付画像自体は追跡していない。Wiki 本文で読めなかったページはない。
