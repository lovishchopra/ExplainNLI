(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWearingKilt (BoundSet) Bool)
(declare-fun HasThrown (BoundSet BoundSet) Bool)
(declare-fun IsWearingSkirt (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsWearingKilt a) (HasThrown a b)))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsWearingSkirt e) (IsWearingKilt f)))) (forall ((g BoundSet)) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsWearingSkirt g) (HasThrown h i))))))) (exists ((c BoundSet)) (IsWearingSkirt c)))))
(check-sat)
(get-model)