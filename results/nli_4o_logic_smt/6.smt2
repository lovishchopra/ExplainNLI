(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun DoesNotBelieveInGod (BoundSet) Bool)
(declare-fun WillBurnInHellForever (BoundSet) Bool)
(declare-fun MustBelieveInGod (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (DoesNotBelieveInGod a) (WillBurnInHellForever a))) (exists ((a BoundSet)) (MustBelieveInGod a)))))
(check-sat)
(get-model)