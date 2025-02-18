Definition ice {A : Type} : A -> A :=
  fun x => x.
Notation "🧊 t" := (ice t) (at level 0).
Tactic Notation "degas" tactic(t) := with_strategy transparent [ice] (t).
Tactic Notation "degas_completely" tactic(t) := with_strategy expand [ice] (t).
Ltac fire_hyp H := degas (unfold ice in H).
Ltac fire_goal := degas (unfold ice).
Ltac fire := degas (unfold ice in * ).

(* As you wish, Global Opaque ice. *)