(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWearingKilt (BoundSet) Bool)
(declare-fun HasThrownLargePole (BoundSet) Bool)
(declare-fun IsWearingSkirt (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsWearingKilt a) (HasThrownLargePole a))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsWearingKilt e) (IsWearingSkirt f)))) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsWearingSkirt g) (HasThrownLargePole h)))))) (exists ((c BoundSet)) (IsWearingSkirt c)))))
(check-sat)
(get-model)