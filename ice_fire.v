Definition ice {A : Type} : A -> A :=
  fun x => x.
Notation "🧊 t" := (ice t) (at level 0). (* U+1F9CA *)
Tactic Notation "degas" tactic(t) := with_strategy transparent [ice] (t).
Tactic Notation "degas_completely" tactic(t) := with_strategy expand [ice] (t).
Ltac fire_hyp H := degas (unfold ice in H).
Ltac fire_goal := degas (unfold ice).
Ltac fire := degas (unfold ice in * ).

Definition snow {A : Type} : A -> A :=
  fun x => x.
Notation "❄ t" := (snow t) (at level 0). (* U+2744 *)
Tactic Notation "degas_snow" tactic(t) := with_strategy transparent [snow] (t).
Tactic Notation "degas_snow_completely" tactic(t) := with_strategy expand [snow] (t).
Ltac snowplow_hyp H := degas (unfold snow in H).
Ltac snowplow_goal := degas (unfold snow).
Ltac snowplow := degas (unfold snow in * ).

(* As you wish :
  Global Opaque ice.
  Strategy 50 [snow]. *)