(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun OnGunViolence (BoundSet) Bool)
(declare-fun ShouldBan (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (OnGunViolence a)) (exists ((c BoundSet)) (exists ((d BoundSet)) (ShouldBan c d))))))
(check-sat)
(get-model)